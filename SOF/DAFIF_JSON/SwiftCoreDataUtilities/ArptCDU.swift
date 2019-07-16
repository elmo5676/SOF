

import Foundation
import CoreData


class ArptCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?
    let rwyCDU = RwyCDU()
    var allRwys: [Rwy_CD] = []
    let stack = DAFIFCDStack()

	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ARPT.json")
				var tempArray: [Arpt_CD] = []
				do {
					let results = try decoder.decode([Arpt].self, from: Data(contentsOf: fileName))
					for arpt_CD in results {
						let arpt_CD_DB = Arpt_CD(context: moc)
						arpt_CD_DB.arptIdent_CD = arpt_CD.arptIdent
						arpt_CD_DB.name_CD = arpt_CD.name
						arpt_CD_DB.stateProv_CD = arpt_CD.stateProv
						arpt_CD_DB.icao_CD = arpt_CD.icao
						arpt_CD_DB.faaHostId_CD = arpt_CD.faaHostId
						arpt_CD_DB.locHdatum_CD = arpt_CD.locHdatum
						arpt_CD_DB.wgsDatum_CD = arpt_CD.wgsDatum
						arpt_CD_DB.wgsLat_CD = arpt_CD.wgsLat
						arpt_CD_DB.wgsDlat_CD = arpt_CD.wgsDlat
						arpt_CD_DB.wgsLong_CD = arpt_CD.wgsLong
						arpt_CD_DB.wgsDlong_CD = arpt_CD.wgsDlong
						arpt_CD_DB.elev_CD = arpt_CD.elev
						arpt_CD_DB.type_CD = arpt_CD.type
						arpt_CD_DB.magVar_CD = arpt_CD.magVar
						arpt_CD_DB.wac_CD = arpt_CD.wac
						arpt_CD_DB.beacon_CD = arpt_CD.beacon
						arpt_CD_DB.secondArpt_CD = arpt_CD.secondArpt
						arpt_CD_DB.oprAgy_CD = arpt_CD.oprAgy
						arpt_CD_DB.secName_CD = arpt_CD.secName
						arpt_CD_DB.secIcao_CD = arpt_CD.secIcao
						arpt_CD_DB.secFaa_CD = arpt_CD.secFaa
						arpt_CD_DB.secOprAgy_CD = arpt_CD.secOprAgy
						arpt_CD_DB.cycleDate_CD = arpt_CD.cycleDate
						arpt_CD_DB.terrain_CD = arpt_CD.terrain
						arpt_CD_DB.hydro_CD = arpt_CD.hydro
						tempArray.append(arpt_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("Arpt_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteArpt_CD = NSBatchDeleteRequest(fetchRequest: Arpt_CD.fetchRequest())
		do {
			try moc.execute(deleteArpt_CD)
			try moc.save()
			print("All Arpt_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


    func getAll(moc: NSManagedObjectContext) -> [Arpt_CD] {
		var arpt_CD = [Arpt_CD]()
		let arpt_CDFetchRequest = NSFetchRequest<Arpt_CD>(entityName: "Arpt_CD")
		do {
			arpt_CD = try moc.fetch(arpt_CDFetchRequest)
		} catch {
			print(error)
		}
		return arpt_CD
	}
    
    
    func getArptWithId(id: String, moc: NSManagedObjectContext) -> Arpt_CD? {
        let arpt_CDFetchRequest = NSFetchRequest<Arpt_CD>(entityName: "Arpt_CD")
        let arptPredicate = NSPredicate(format: "%K = %@", #keyPath(Arpt_CD.arptIdent_CD) , id)
        arpt_CDFetchRequest.predicate = arptPredicate
        do {
            return try moc.fetch(arpt_CDFetchRequest).first
        } catch {
            print(error)
            return nil
        }
    }
    
    func getArptWithICAO(icao: String, moc: NSManagedObjectContext) -> Arpt_CD? {
        let arpt_CDFetchRequest = NSFetchRequest<Arpt_CD>(entityName: "Arpt_CD")
        let arptPredicate = NSPredicate(format: "%K = %@", #keyPath(Arpt_CD.icao_CD) , icao)
        arpt_CDFetchRequest.predicate = arptPredicate
        do {
            return try moc.fetch(arpt_CDFetchRequest).first
        } catch {
            print(error)
            return nil
        }
    }
    
    
}
