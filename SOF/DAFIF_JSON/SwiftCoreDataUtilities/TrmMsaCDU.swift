

import Foundation
import CoreData


class TrmMsaCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_MSA.json")
				var tempArray: [TrmMsa_CD] = []
				do {
					let results = try decoder.decode([TrmMsa].self, from: Data(contentsOf: fileName))
					for trmMsa_CD in results {
						let trmMsa_CD_DB = TrmMsa_CD(context: moc)
						trmMsa_CD_DB.arptIdent_CD = trmMsa_CD.arptIdent
						tempArray.append(trmMsa_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmMsa_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmMsa_CD = NSBatchDeleteRequest(fetchRequest: TrmMsa_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmMsa_CD)
			try moc.save()
			print("All TrmMsa_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmMsa_CD] {
		let moc = pc.viewContext
		var trmMsa_CD = [TrmMsa_CD]()
		let trmMsa_CDFetchRequest = NSFetchRequest<TrmMsa_CD>(entityName: "TrmMsa_CD")
		do {
			trmMsa_CD = try moc.fetch(trmMsa_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmMsa_CD
	}
}