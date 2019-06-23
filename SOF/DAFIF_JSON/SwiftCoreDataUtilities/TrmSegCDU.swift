

import Foundation
import CoreData


class TrmSegCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_SEG.json")
				var tempArray: [TrmSeg_CD] = []
				do {
					let results = try decoder.decode([TrmSeg].self, from: Data(contentsOf: fileName))
					for trmSeg_CD in results {
						let trmSeg_CD_DB = TrmSeg_CD(context: moc)
						trmSeg_CD_DB.arptIdent_CD = trmSeg_CD.arptIdent
						tempArray.append(trmSeg_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmSeg_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmSeg_CD = NSBatchDeleteRequest(fetchRequest: TrmSeg_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmSeg_CD)
			try moc.save()
			print("All TrmSeg_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmSeg_CD] {
		let moc = pc.viewContext
		var trmSeg_CD = [TrmSeg_CD]()
		let trmSeg_CDFetchRequest = NSFetchRequest<TrmSeg_CD>(entityName: "TrmSeg_CD")
		do {
			trmSeg_CD = try moc.fetch(trmSeg_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmSeg_CD
	}
}