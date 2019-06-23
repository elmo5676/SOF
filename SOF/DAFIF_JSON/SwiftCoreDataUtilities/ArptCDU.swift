

import Foundation
import CoreData


class ArptCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ARPT.json")
				var tempArray: [Arpt_CD] = []
				do {
					let results = try decoder.decode([Arpt].self, from: Data(contentsOf: fileName))
					for arpt_CD in results {
						let arpt_CD_DB = Arpt_CD(context: moc)
						arpt_CD_DB.arptIdent_CD = arpt_CD.arptIdent
						tempArray.append(arpt_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Arpt_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteArpt_CD = NSBatchDeleteRequest(fetchRequest: Arpt_CD.fetchRequest())
		do {
			try moc.execute(deleteArpt_CD)
			try moc.save()
			print("All Arpt_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Arpt_CD] {
		let moc = pc.viewContext
		var arpt_CD = [Arpt_CD]()
		let arpt_CDFetchRequest = NSFetchRequest<Arpt_CD>(entityName: "Arpt_CD")
		do {
			arpt_CD = try moc.fetch(arpt_CDFetchRequest)
		} catch {
			print(error)
		}
		return arpt_CD
	}
}