

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
						trmPar_CD_DB.arptIdent_CD = trmPar_CD.arptIdent						trmPar_CD_DB.proc_CD = trmPar_CD.proc						trmPar_CD_DB.trmIdent_CD = trmPar_CD.trmIdent						trmPar_CD_DB.icao_CD = trmPar_CD.icao						trmPar_CD_DB.esAlt_CD = trmPar_CD.esAlt						trmPar_CD_DB.julianDate_CD = trmPar_CD.julianDate						trmPar_CD_DB.amdtNo_CD = trmPar_CD.amdtNo						trmPar_CD_DB.opr_CD = trmPar_CD.opr						trmPar_CD_DB.hostCtryAuth_CD = trmPar_CD.hostCtryAuth						trmPar_CD_DB.cycleDate_CD = trmPar_CD.cycleDate						trmPar_CD_DB.altMin_CD = trmPar_CD.altMin						trmPar_CD_DB.tranAlt_CD = trmPar_CD.tranAlt						trmPar_CD_DB.tranLvl_CD = trmPar_CD.tranLvl						trmPar_CD_DB.rteTypeQual_CD = trmPar_CD.rteTypeQual
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