

import Foundation
import CoreData


class FueloilCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/SUPP_FUELOIL.json")
				var tempArray: [Fueloil_CD] = []
				do {
					let results = try decoder.decode([Fueloil].self, from: Data(contentsOf: fileName))
					for fueloil_CD in results {
						let fueloil_CD_DB = Fueloil_CD(context: moc)
						fueloil_CD_DB.arptIdent_CD = fueloil_CD.arptIdent
						fueloil_CD_DB.icao_CD = fueloil_CD.icao
						fueloil_CD_DB.fuel_CD = fueloil_CD.fuel
						fueloil_CD_DB.oil_CD = fueloil_CD.oil
						fueloil_CD_DB.jasu_CD = fueloil_CD.jasu
						fueloil_CD_DB.supFluids_CD = fueloil_CD.supFluids
						fueloil_CD_DB.cycleDate_CD = fueloil_CD.cycleDate
						tempArray.append(fueloil_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						log.info("Fueloil_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteFueloil_CD = NSBatchDeleteRequest(fetchRequest: Fueloil_CD.fetchRequest())
		do {
			try moc.execute(deleteFueloil_CD)
			try moc.save()
			print("All Fueloil_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Fueloil_CD] {
		let moc = pc.viewContext
		var fueloil_CD = [Fueloil_CD]()
		let fueloil_CDFetchRequest = NSFetchRequest<Fueloil_CD>(entityName: "Fueloil_CD")
		do {
			fueloil_CD = try moc.fetch(fueloil_CDFetchRequest)
		} catch {
			print(error)
		}
		return fueloil_CD
	}
    
    
    class func getWithAirPortId(id: String, moc: NSManagedObjectContext) -> [Fueloil_CD]? {
        let CDFetchRequest = NSFetchRequest<Fueloil_CD>(entityName: "Fueloil_CD")
        let predicate = NSPredicate(format: "%K = %@", #keyPath(Fueloil_CD.arptIdent_CD) , id)
        CDFetchRequest.predicate = predicate
        do {
            return try moc.fetch(CDFetchRequest)
        } catch {
            print(error)
            return nil
        }
    }
}
