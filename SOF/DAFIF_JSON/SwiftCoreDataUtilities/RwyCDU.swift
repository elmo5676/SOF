

import Foundation
import CoreData


class RwyCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_RWY.json")
				var tempArray: [Rwy_CD] = []
				do {
					let results = try decoder.decode([Rwy].self, from: Data(contentsOf: fileName))
					for rwy_CD in results {
						let rwy_CD_DB = Rwy_CD(context: moc)
						rwy_CD_DB.arptIdent_CD = rwy_CD.arptIdent
						tempArray.append(rwy_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Rwy_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteRwy_CD = NSBatchDeleteRequest(fetchRequest: Rwy_CD.fetchRequest())
		do {
			try moc.execute(deleteRwy_CD)
			try moc.save()
			print("All Rwy_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Rwy_CD] {
		let moc = pc.viewContext
		var rwy_CD = [Rwy_CD]()
		let rwy_CDFetchRequest = NSFetchRequest<Rwy_CD>(entityName: "Rwy_CD")
		do {
			rwy_CD = try moc.fetch(rwy_CDFetchRequest)
		} catch {
			print(error)
		}
		return rwy_CD
	}
}