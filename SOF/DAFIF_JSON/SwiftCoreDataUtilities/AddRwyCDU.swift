

import Foundation
import CoreData


class AddRwyCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/SUPP_ADD_RWY.json")
				var tempArray: [AddRwy_CD] = []
				do {
					let results = try decoder.decode([AddRwy].self, from: Data(contentsOf: fileName))
					for addRwy_CD in results {
						let addRwy_CD_DB = AddRwy_CD(context: moc)
						addRwy_CD_DB.arptIdent_CD = addRwy_CD.arptIdent
						tempArray.append(addRwy_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("AddRwy_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAddRwy_CD = NSBatchDeleteRequest(fetchRequest: AddRwy_CD.fetchRequest())
		do {
			try moc.execute(deleteAddRwy_CD)
			try moc.save()
			print("All AddRwy_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [AddRwy_CD] {
		let moc = pc.viewContext
		var addRwy_CD = [AddRwy_CD]()
		let addRwy_CDFetchRequest = NSFetchRequest<AddRwy_CD>(entityName: "AddRwy_CD")
		do {
			addRwy_CD = try moc.fetch(addRwy_CDFetchRequest)
		} catch {
			print(error)
		}
		return addRwy_CD
	}
}