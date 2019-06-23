

import Foundation
import CoreData


class AcomCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ACOM.json")
				var tempArray: [Acom_CD] = []
				do {
					let results = try decoder.decode([Acom].self, from: Data(contentsOf: fileName))
					for acom_CD in results {
						let acom_CD_DB = Acom_CD(context: moc)
						acom_CD_DB.arptIdent_CD = acom_CD.arptIdent
						tempArray.append(acom_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Acom_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAcom_CD = NSBatchDeleteRequest(fetchRequest: Acom_CD.fetchRequest())
		do {
			try moc.execute(deleteAcom_CD)
			try moc.save()
			print("All Acom_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Acom_CD] {
		let moc = pc.viewContext
		var acom_CD = [Acom_CD]()
		let acom_CDFetchRequest = NSFetchRequest<Acom_CD>(entityName: "Acom_CD")
		do {
			acom_CD = try moc.fetch(acom_CDFetchRequest)
		} catch {
			print(error)
		}
		return acom_CD
	}
}