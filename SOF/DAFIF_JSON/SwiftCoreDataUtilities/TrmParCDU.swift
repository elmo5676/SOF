

import Foundation
import CoreData


class TrmParCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/TRM_TRM_PAR.json")
				var tempArray: [TrmPar_CD] = []
				do {
					let results = try decoder.decode([TrmPar].self, from: Data(contentsOf: fileName))
					for trmPar_CD in results {
						let trmPar_CD_DB = TrmPar_CD(context: moc)
						trmPar_CD_DB.arptIdent_CD = trmPar_CD.arptIdent
						tempArray.append(trmPar_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("TrmPar_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteTrmPar_CD = NSBatchDeleteRequest(fetchRequest: TrmPar_CD.fetchRequest())
		do {
			try moc.execute(deleteTrmPar_CD)
			try moc.save()
			print("All TrmPar_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [TrmPar_CD] {
		let moc = pc.viewContext
		var trmPar_CD = [TrmPar_CD]()
		let trmPar_CDFetchRequest = NSFetchRequest<TrmPar_CD>(entityName: "TrmPar_CD")
		do {
			trmPar_CD = try moc.fetch(trmPar_CDFetchRequest)
		} catch {
			print(error)
		}
		return trmPar_CD
	}
}