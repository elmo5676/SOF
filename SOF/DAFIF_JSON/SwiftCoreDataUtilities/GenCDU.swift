

import Foundation
import CoreData


class GenCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/SUPP_GEN.json")
				var tempArray: [Gen_CD] = []
				do {
					let results = try decoder.decode([Gen].self, from: Data(contentsOf: fileName))
					for gen_CD in results {
						let gen_CD_DB = Gen_CD(context: moc)
						gen_CD_DB.arptIdent_CD = gen_CD.arptIdent						gen_CD_DB.icao_CD = gen_CD.icao						gen_CD_DB.altName_CD = gen_CD.altName						gen_CD_DB.cityCrossRef_CD = gen_CD.cityCrossRef						gen_CD_DB.islGroup_CD = gen_CD.islGroup						gen_CD_DB.notam_CD = gen_CD.notam						gen_CD_DB.oprHrs_CD = gen_CD.oprHrs						gen_CD_DB.clearStatus_CD = gen_CD.clearStatus						gen_CD_DB.utmGrid_CD = gen_CD.utmGrid						gen_CD_DB.time_CD = gen_CD.time						gen_CD_DB.daylightSave_CD = gen_CD.daylightSave						gen_CD_DB.flipPub_CD = gen_CD.flipPub						gen_CD_DB.cycleDate_CD = gen_CD.cycleDate
						tempArray.append(gen_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Gen_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteGen_CD = NSBatchDeleteRequest(fetchRequest: Gen_CD.fetchRequest())
		do {
			try moc.execute(deleteGen_CD)
			try moc.save()
			print("All Gen_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Gen_CD] {
		let moc = pc.viewContext
		var gen_CD = [Gen_CD]()
		let gen_CDFetchRequest = NSFetchRequest<Gen_CD>(entityName: "Gen_CD")
		do {
			gen_CD = try moc.fetch(gen_CDFetchRequest)
		} catch {
			print(error)
		}
		return gen_CD
	}
}