

import Foundation
import CoreData


class IlsCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ILS.json")
				var tempArray: [Ils_CD] = []
				do {
					let results = try decoder.decode([Ils].self, from: Data(contentsOf: fileName))
					for ils_CD in results {
						let ils_CD_DB = Ils_CD(context: moc)
						ils_CD_DB.arptIdent_CD = ils_CD.arptIdent
						ils_CD_DB.rwyIdent_CD = ils_CD.rwyIdent
						ils_CD_DB.compType_CD = ils_CD.compType
						ils_CD_DB.colctn_CD = ils_CD.colctn
						ils_CD_DB.name_CD = ils_CD.name
						ils_CD_DB.freq_CD = ils_CD.freq
						ils_CD_DB.chan_CD = ils_CD.chan
						ils_CD_DB.gsAngle_CD = ils_CD.gsAngle
						ils_CD_DB.lczrGslctn_CD = ils_CD.lczrGslctn
						ils_CD_DB.locMkrlctn_CD = ils_CD.locMkrlctn
						ils_CD_DB.elev_CD = ils_CD.elev
						ils_CD_DB.locHdatum_CD = ils_CD.locHdatum
						ils_CD_DB.wgsDatum_CD = ils_CD.wgsDatum
						ils_CD_DB.ilsCat_CD = ils_CD.ilsCat
						ils_CD_DB.wgsLat_CD = ils_CD.wgsLat
						ils_CD_DB.wgsDlat_CD = ils_CD.wgsDlat
						ils_CD_DB.wgsLong_CD = ils_CD.wgsLong
						ils_CD_DB.wgsDlong_CD = ils_CD.wgsDlong
						ils_CD_DB.navIdent_CD = ils_CD.navIdent
						ils_CD_DB.navType_CD = ils_CD.navType
						ils_CD_DB.navCtry_CD = ils_CD.navCtry
						ils_CD_DB.navKeyCd_CD = ils_CD.navKeyCd
						ils_CD_DB.magVar_CD = ils_CD.magVar
						ils_CD_DB.slaveVar_CD = ils_CD.slaveVar
						ils_CD_DB.ilsBrg_CD = ils_CD.ilsBrg
						ils_CD_DB.locWidth_CD = ils_CD.locWidth
						ils_CD_DB.thdCrossingHgt_CD = ils_CD.thdCrossingHgt
						ils_CD_DB.dmeBias_CD = ils_CD.dmeBias
						ils_CD_DB.cycleDate_CD = ils_CD.cycleDate
						ils_CD_DB.dmeNP_CD = ils_CD.dmeNP
						tempArray.append(ils_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("Ils_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteIls_CD = NSBatchDeleteRequest(fetchRequest: Ils_CD.fetchRequest())
		do {
			try moc.execute(deleteIls_CD)
			try moc.save()
			print("All Ils_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Ils_CD] {
		let moc = pc.viewContext
		var ils_CD = [Ils_CD]()
		let ils_CDFetchRequest = NSFetchRequest<Ils_CD>(entityName: "Ils_CD")
		do {
			ils_CD = try moc.fetch(ils_CDFetchRequest)
		} catch {
			print(error)
		}
		return ils_CD
	}
    
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [Ils_CD]? {
        let CDFetchRequest = NSFetchRequest<Ils_CD>(entityName: "Ils_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(Ils_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
}
