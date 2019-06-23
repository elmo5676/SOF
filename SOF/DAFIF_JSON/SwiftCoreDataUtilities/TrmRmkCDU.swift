

import Foundation
import CoreData


class TrmRmkCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_RMK.json")
				var tempArray: [TrmRmk_CD] = []
				do {
					let results = try decoder.decode([TrmRmk].self, from: Data(contentsOf: fileName))
					for trmRmk_CD in results {
						let trmRmk_CD_DB = TrmRmk_CD(context: moc)
						trmRmk_CD_DB.arptIdent_CD = trmRmk_CD.arptIdent
						tempArray.append(trmRmk_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmRmk_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmRmk_CD = NSBatchDeleteRequest(fetchRequest: TrmRmk_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmRmk_CD)
			try moc.save()
			print("All TrmRmk_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmRmk_CD] {
		let moc = pc.viewContext
		var trmRmk_CD = [TrmRmk_CD]()
		let trmRmk_CDFetchRequest = NSFetchRequest<TrmRmk_CD>(entityName: "TrmRmk_CD")
		do {
			trmRmk_CD = try moc.fetch(trmRmk_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmRmk_CD
	}
}