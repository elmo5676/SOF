

import Foundation
import CoreData


class TrmMinCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_MIN.json")
				var tempArray: [TrmMin_CD] = []
				do {
					let results = try decoder.decode([TrmMin].self, from: Data(contentsOf: fileName))
					for trmMin_CD in results {
						let trmMin_CD_DB = TrmMin_CD(context: moc)
						trmMin_CD_DB.arptIdent_CD = trmMin_CD.arptIdent
						tempArray.append(trmMin_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmMin_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmMin_CD = NSBatchDeleteRequest(fetchRequest: TrmMin_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmMin_CD)
			try moc.save()
			print("All TrmMin_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmMin_CD] {
		let moc = pc.viewContext
		var trmMin_CD = [TrmMin_CD]()
		let trmMin_CDFetchRequest = NSFetchRequest<TrmMin_CD>(entityName: "TrmMin_CD")
		do {
			trmMin_CD = try moc.fetch(trmMin_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmMin_CD
	}
}