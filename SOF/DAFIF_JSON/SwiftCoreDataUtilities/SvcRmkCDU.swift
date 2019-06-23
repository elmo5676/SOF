

import Foundation
import CoreData


class SvcRmkCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/SUPP_SVC_RMK.json")
				var tempArray: [SvcRmk_CD] = []
				do {
					let results = try decoder.decode([SvcRmk].self, from: Data(contentsOf: fileName))
					for svcRmk_CD in results {
						let svcRmk_CD_DB = SvcRmk_CD(context: moc)
						svcRmk_CD_DB.arptIdent_CD = svcRmk_CD.arptIdent
						tempArray.append(svcRmk_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("SvcRmk_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteSvcRmk_CD = NSBatchDeleteRequest(fetchRequest: SvcRmk_CD.fetchRequest())
		do {
			try moc.execute(deleteSvcRmk_CD)
			try moc.save()
			print("All SvcRmk_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [SvcRmk_CD] {
		let moc = pc.viewContext
		var svcRmk_CD = [SvcRmk_CD]()
		let svcRmk_CDFetchRequest = NSFetchRequest<SvcRmk_CD>(entityName: "SvcRmk_CD")
		do {
			svcRmk_CD = try moc.fetch(svcRmk_CDFetchRequest)
		} catch {
			print(error)
		}
		return svcRmk_CD
	}
}