

import Foundation
import CoreData


class TrmClbCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_CLB.json")
				var tempArray: [TrmClb_CD] = []
				do {
					let results = try decoder.decode([TrmClb].self, from: Data(contentsOf: fileName))
					for trmClb_CD in results {
						let trmClb_CD_DB = TrmClb_CD(context: moc)
						trmClb_CD_DB.arptIdent_CD = trmClb_CD.arptIdent
						tempArray.append(trmClb_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmClb_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmClb_CD = NSBatchDeleteRequest(fetchRequest: TrmClb_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmClb_CD)
			try moc.save()
			print("All TrmClb_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmClb_CD] {
		let moc = pc.viewContext
		var trmClb_CD = [TrmClb_CD]()
		let trmClb_CDFetchRequest = NSFetchRequest<TrmClb_CD>(entityName: "TrmClb_CD")
		do {
			trmClb_CD = try moc.fetch(trmClb_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmClb_CD
	}
}