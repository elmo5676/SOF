

import Foundation
import CoreData


class AcomRmkCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ACOM_RMK.json")
				var tempArray: [AcomRmk_CD] = []
				do {
					let results = try decoder.decode([AcomRmk].self, from: Data(contentsOf: fileName))
					for acomRmk_CD in results {
						let acomRmk_CD_DB = AcomRmk_CD(context: moc)
						acomRmk_CD_DB.arptIdent_CD = acomRmk_CD.arptIdent
						acomRmk_CD_DB.commType_CD = acomRmk_CD.commType
						acomRmk_CD_DB.rmkSeq_CD = acomRmk_CD.rmkSeq
						acomRmk_CD_DB.remark_CD = acomRmk_CD.remark
						acomRmk_CD_DB.cycleDate_CD = acomRmk_CD.cycleDate
						acomRmk_CD_DB.multi_CD = acomRmk_CD.multi
						tempArray.append(acomRmk_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("AcomRmk_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAcomRmk_CD = NSBatchDeleteRequest(fetchRequest: AcomRmk_CD.fetchRequest())
		do {
			try moc.execute(deleteAcomRmk_CD)
			try moc.save()
			print("All AcomRmk_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [AcomRmk_CD] {
		let moc = pc.viewContext
		var acomRmk_CD = [AcomRmk_CD]()
		let acomRmk_CDFetchRequest = NSFetchRequest<AcomRmk_CD>(entityName: "AcomRmk_CD")
		do {
			acomRmk_CD = try moc.fetch(acomRmk_CDFetchRequest)
		} catch {
			print(error)
		}
		return acomRmk_CD
	}
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [AcomRmk_CD]? {
        let CDFetchRequest = NSFetchRequest<AcomRmk_CD>(entityName: "AcomRmk_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(AcomRmk_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
}
