

import Foundation
import CoreData


class AnavCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_ANAV.json")
				var tempArray: [Anav_CD] = []
				do {
					let results = try decoder.decode([Anav].self, from: Data(contentsOf: fileName))
					for anav_CD in results {
						let anav_CD_DB = Anav_CD(context: moc)
						anav_CD_DB.arptIdent_CD = anav_CD.arptIdent						anav_CD_DB.navIdent_CD = anav_CD.navIdent						anav_CD_DB.navType_CD = anav_CD.navType						anav_CD_DB.navCtry_CD = anav_CD.navCtry						anav_CD_DB.navKeyCd_CD = anav_CD.navKeyCd						anav_CD_DB.name_CD = anav_CD.name						anav_CD_DB.atFld_CD = anav_CD.atFld						anav_CD_DB.bearing_CD = anav_CD.bearing						anav_CD_DB.distance_CD = anav_CD.distance						anav_CD_DB.cycleDate_CD = anav_CD.cycleDate
						tempArray.append(anav_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Anav_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteAnav_CD = NSBatchDeleteRequest(fetchRequest: Anav_CD.fetchRequest())
		do {
			try moc.execute(deleteAnav_CD)
			try moc.save()
			print("All Anav_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Anav_CD] {
		let moc = pc.viewContext
		var anav_CD = [Anav_CD]()
		let anav_CDFetchRequest = NSFetchRequest<Anav_CD>(entityName: "Anav_CD")
		do {
			anav_CD = try moc.fetch(anav_CDFetchRequest)
		} catch {
			print(error)
		}
		return anav_CD
	}
}