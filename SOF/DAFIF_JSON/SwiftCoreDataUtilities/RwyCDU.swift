

import Foundation
import CoreData


class RwyCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/ARPT_RWY.json")
				var tempArray: [Rwy_CD] = []
				do {
					let results = try decoder.decode([Rwy].self, from: Data(contentsOf: fileName))
					for rwy_CD in results {
						let rwy_CD_DB = Rwy_CD(context: moc)
						rwy_CD_DB.arptIdent_CD = rwy_CD.arptIdent						rwy_CD_DB.highIdent_CD = rwy_CD.highIdent						rwy_CD_DB.lowIdent_CD = rwy_CD.lowIdent						rwy_CD_DB.highHdg_CD = rwy_CD.highHdg						rwy_CD_DB.lowHdg_CD = rwy_CD.lowHdg						rwy_CD_DB.length_CD = rwy_CD.length						rwy_CD_DB.rwyWidth_CD = rwy_CD.rwyWidth						rwy_CD_DB.surface_CD = rwy_CD.surface						rwy_CD_DB.pcn_CD = rwy_CD.pcn						rwy_CD_DB.heWgsLat_CD = rwy_CD.heWgsLat						rwy_CD_DB.heWgsDlat_CD = rwy_CD.heWgsDlat						rwy_CD_DB.heWgsLong_CD = rwy_CD.heWgsLong						rwy_CD_DB.heWgsDlong_CD = rwy_CD.heWgsDlong						rwy_CD_DB.heElev_CD = rwy_CD.heElev						rwy_CD_DB.heSlope_CD = rwy_CD.heSlope						rwy_CD_DB.heTdze_CD = rwy_CD.heTdze						rwy_CD_DB.heDt_CD = rwy_CD.heDt						rwy_CD_DB.heDtElev_CD = rwy_CD.heDtElev						rwy_CD_DB.hlgtSys1_CD = rwy_CD.hlgtSys1						rwy_CD_DB.hlgtSys2_CD = rwy_CD.hlgtSys2						rwy_CD_DB.hlgtSys3_CD = rwy_CD.hlgtSys3						rwy_CD_DB.hlgtSys4_CD = rwy_CD.hlgtSys4						rwy_CD_DB.hlgtSys5_CD = rwy_CD.hlgtSys5						rwy_CD_DB.hlgtSys6_CD = rwy_CD.hlgtSys6						rwy_CD_DB.hlgtSys7_CD = rwy_CD.hlgtSys7						rwy_CD_DB.hlgtSys8_CD = rwy_CD.hlgtSys8						rwy_CD_DB.leWgsLat_CD = rwy_CD.leWgsLat						rwy_CD_DB.leWgsDlat_CD = rwy_CD.leWgsDlat						rwy_CD_DB.leWgsLong_CD = rwy_CD.leWgsLong						rwy_CD_DB.leWgsDlong_CD = rwy_CD.leWgsDlong						rwy_CD_DB.leElev_CD = rwy_CD.leElev						rwy_CD_DB.leSlope_CD = rwy_CD.leSlope						rwy_CD_DB.leTdze_CD = rwy_CD.leTdze						rwy_CD_DB.leDt_CD = rwy_CD.leDt						rwy_CD_DB.leDtElev_CD = rwy_CD.leDtElev						rwy_CD_DB.llgtSys1_CD = rwy_CD.llgtSys1						rwy_CD_DB.llgtSys2_CD = rwy_CD.llgtSys2						rwy_CD_DB.llgtSys3_CD = rwy_CD.llgtSys3						rwy_CD_DB.llgtSys4_CD = rwy_CD.llgtSys4						rwy_CD_DB.llgtSys5_CD = rwy_CD.llgtSys5						rwy_CD_DB.llgtSys6_CD = rwy_CD.llgtSys6						rwy_CD_DB.llgtSys7_CD = rwy_CD.llgtSys7						rwy_CD_DB.llgtSys8_CD = rwy_CD.llgtSys8						rwy_CD_DB.heTrueHdg_CD = rwy_CD.heTrueHdg						rwy_CD_DB.leTrueHdg_CD = rwy_CD.leTrueHdg						rwy_CD_DB.cldRwy_CD = rwy_CD.cldRwy						rwy_CD_DB.helandDis_CD = rwy_CD.helandDis						rwy_CD_DB.heTakeoff_CD = rwy_CD.heTakeoff						rwy_CD_DB.lelandDis_CD = rwy_CD.lelandDis						rwy_CD_DB.leTakeoff_CD = rwy_CD.leTakeoff						rwy_CD_DB.cycleDate_CD = rwy_CD.cycleDate
						tempArray.append(rwy_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Rwy_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteRwy_CD = NSBatchDeleteRequest(fetchRequest: Rwy_CD.fetchRequest())
		do {
			try moc.execute(deleteRwy_CD)
			try moc.save()
			print("All Rwy_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Rwy_CD] {
		let moc = pc.viewContext
		var rwy_CD = [Rwy_CD]()
		let rwy_CDFetchRequest = NSFetchRequest<Rwy_CD>(entityName: "Rwy_CD")
		do {
			rwy_CD = try moc.fetch(rwy_CDFetchRequest)
		} catch {
			print(error)
		}
		return rwy_CD
	}
}