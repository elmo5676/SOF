

import Foundation
import CoreData


class AcomCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ACOM.json")
				var tempArray: [Acom_CD] = []
				do {
					let results = try decoder.decode([Acom].self, from: Data(contentsOf: fileName))
					for acom_CD in results {
						let acom_CD_DB = Acom_CD(context: moc)
						acom_CD_DB.arptIdent_CD = acom_CD.arptIdent
						acom_CD_DB.commType_CD = acom_CD.commType
						acom_CD_DB.commName_CD = acom_CD.commName
						acom_CD_DB.sym_CD = acom_CD.sym
						acom_CD_DB.freq1_CD = acom_CD.freq1
						acom_CD_DB.freq2_CD = acom_CD.freq2
						acom_CD_DB.freq3_CD = acom_CD.freq3
						acom_CD_DB.freq4_CD = acom_CD.freq4
						acom_CD_DB.freq5_CD = acom_CD.freq5
						acom_CD_DB.sec_CD = acom_CD.sec
						acom_CD_DB.sOprH_CD = acom_CD.sOprH
						acom_CD_DB.cycleDate_CD = acom_CD.cycleDate
						acom_CD_DB.multi_CD = acom_CD.multi
						acom_CD_DB.freqMulti_CD = acom_CD.freqMulti
						acom_CD_DB.comFreq1_CD = acom_CD.comFreq1
						acom_CD_DB.freqUnit1_CD = acom_CD.freqUnit1
						acom_CD_DB.comFreq2_CD = acom_CD.comFreq2
						acom_CD_DB.freqUnit2_CD = acom_CD.freqUnit2
						acom_CD_DB.comFreq3_CD = acom_CD.comFreq3
						acom_CD_DB.freqUnit3_CD = acom_CD.freqUnit3
						acom_CD_DB.comFreq4_CD = acom_CD.comFreq4
						acom_CD_DB.freqUnit4_CD = acom_CD.freqUnit4
						acom_CD_DB.comFreq5_CD = acom_CD.comFreq5
						acom_CD_DB.freqUnit5_CD = acom_CD.freqUnit5
						tempArray.append(acom_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("Acom_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAcom_CD = NSBatchDeleteRequest(fetchRequest: Acom_CD.fetchRequest())
		do {
			try moc.execute(deleteAcom_CD)
			try moc.save()
			print("All Acom_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Acom_CD] {
		let moc = pc.viewContext
		var acom_CD = [Acom_CD]()
		let acom_CDFetchRequest = NSFetchRequest<Acom_CD>(entityName: "Acom_CD")
		do {
			acom_CD = try moc.fetch(acom_CDFetchRequest)
		} catch {
			print(error)
		}
		return acom_CD
	}
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [Acom_CD]? {
        let CDFetchRequest = NSFetchRequest<Acom_CD>(entityName: "Acom_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(Acom_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
}
