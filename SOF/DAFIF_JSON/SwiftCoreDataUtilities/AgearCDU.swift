

import Foundation
import CoreData


class AgearCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_AGEAR.json")
				var tempArray: [Agear_CD] = []
				do {
					let results = try decoder.decode([Agear].self, from: Data(contentsOf: fileName))
					for agear_CD in results {
						let agear_CD_DB = Agear_CD(context: moc)
						agear_CD_DB.arptIdent_CD = agear_CD.arptIdent						agear_CD_DB.rwyIdent_CD = agear_CD.rwyIdent						agear_CD_DB.location_CD = agear_CD.location						agear_CD_DB.type_CD = agear_CD.type						agear_CD_DB.cycleDate_CD = agear_CD.cycleDate
						tempArray.append(agear_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Agear_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAgear_CD = NSBatchDeleteRequest(fetchRequest: Agear_CD.fetchRequest())
		do {
			try moc.execute(deleteAgear_CD)
			try moc.save()
			print("All Agear_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Agear_CD] {
		let moc = pc.viewContext
		var agear_CD = [Agear_CD]()
		let agear_CDFetchRequest = NSFetchRequest<Agear_CD>(entityName: "Agear_CD")
		do {
			agear_CD = try moc.fetch(agear_CDFetchRequest)
		} catch {
			print(error)
		}
		return agear_CD
	}
}