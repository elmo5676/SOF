

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
						trmRmk_CD_DB.proc_CD = trmRmk_CD.proc
						trmRmk_CD_DB.trmIdent_CD = trmRmk_CD.trmIdent
						trmRmk_CD_DB.appType_CD = trmRmk_CD.appType
						trmRmk_CD_DB.rmkSeq_CD = trmRmk_CD.rmkSeq
						trmRmk_CD_DB.icao_CD = trmRmk_CD.icao
						trmRmk_CD_DB.remarks_CD = trmRmk_CD.remarks
						trmRmk_CD_DB.cycleDate_CD = trmRmk_CD.cycleDate
						trmRmk_CD_DB.rmkType_CD = trmRmk_CD.rmkType
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
						log.info("TrmRmk_CD Done Loading into CoreData")
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
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [TrmRmk_CD]? {
        let CDFetchRequest = NSFetchRequest<TrmRmk_CD>(entityName: "TrmRmk_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(TrmRmk_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
    
}
