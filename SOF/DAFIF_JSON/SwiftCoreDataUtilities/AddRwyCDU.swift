

import Foundation
import CoreData


class AddRwyCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/SUPP_ADD_RWY.json")
				var tempArray: [AddRwy_CD] = []
				do {
					let results = try decoder.decode([AddRwy].self, from: Data(contentsOf: fileName))
					for addRwy_CD in results {
						let addRwy_CD_DB = AddRwy_CD(context: moc)
						addRwy_CD_DB.arptIdent_CD = addRwy_CD.arptIdent
						addRwy_CD_DB.highIdent_CD = addRwy_CD.highIdent
						addRwy_CD_DB.loIdent_CD = addRwy_CD.loIdent
						addRwy_CD_DB.icao_CD = addRwy_CD.icao
						addRwy_CD_DB.heDtLat_CD = addRwy_CD.heDtLat
						addRwy_CD_DB.heDtDlat_CD = addRwy_CD.heDtDlat
						addRwy_CD_DB.heDtLong_CD = addRwy_CD.heDtLong
						addRwy_CD_DB.heDtDlong_CD = addRwy_CD.heDtDlong
						addRwy_CD_DB.heOverrunDis_CD = addRwy_CD.heOverrunDis
						addRwy_CD_DB.heSurface_CD = addRwy_CD.heSurface
						addRwy_CD_DB.heOverrunLat_CD = addRwy_CD.heOverrunLat
						addRwy_CD_DB.heOverrunDlat_CD = addRwy_CD.heOverrunDlat
						addRwy_CD_DB.heOverrunLong_CD = addRwy_CD.heOverrunLong
						addRwy_CD_DB.heOverrunDlong_CD = addRwy_CD.heOverrunDlong
						addRwy_CD_DB.loDtLat_CD = addRwy_CD.loDtLat
						addRwy_CD_DB.loDtDlat_CD = addRwy_CD.loDtDlat
						addRwy_CD_DB.loDtLong_CD = addRwy_CD.loDtLong
						addRwy_CD_DB.loDtDlong_CD = addRwy_CD.loDtDlong
						addRwy_CD_DB.loOverrunDis_CD = addRwy_CD.loOverrunDis
						addRwy_CD_DB.loSurface_CD = addRwy_CD.loSurface
						addRwy_CD_DB.loOverrunLat_CD = addRwy_CD.loOverrunLat
						addRwy_CD_DB.loOverrunDlat_CD = addRwy_CD.loOverrunDlat
						addRwy_CD_DB.loOverrunLong_CD = addRwy_CD.loOverrunLong
						addRwy_CD_DB.loOverrunDlong_CD = addRwy_CD.loOverrunDlong
						addRwy_CD_DB.cycleDate_CD = addRwy_CD.cycleDate
						tempArray.append(addRwy_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("AddRwy_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAddRwy_CD = NSBatchDeleteRequest(fetchRequest: AddRwy_CD.fetchRequest())
		do {
			try moc.execute(deleteAddRwy_CD)
			try moc.save()
			print("All AddRwy_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [AddRwy_CD] {
		let moc = pc.viewContext
		var addRwy_CD = [AddRwy_CD]()
		let addRwy_CDFetchRequest = NSFetchRequest<AddRwy_CD>(entityName: "AddRwy_CD")
		do {
			addRwy_CD = try moc.fetch(addRwy_CDFetchRequest)
		} catch {
			print(error)
		}
		return addRwy_CD
	}
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [AddRwy_CD]? {
        let CDFetchRequest = NSFetchRequest<AddRwy_CD>(entityName: "AddRwy_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(AddRwy_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
}
