

import Foundation
import CoreData


class NavCDU {


	var cduIncDelegate: DafifCoreDataIncrementorDelegate?


	func loadIntoCoreData(pc: NSPersistentContainer){
		pc.performBackgroundTask { moc in
				let decoder = JSONDecoder()
				let fileName = (FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)).first!.appendingPathComponent("DAFIF_JSON/NAV_NAV.json")
				var tempArray: [Nav_CD] = []
				do {
					let results = try decoder.decode([Nav].self, from: Data(contentsOf: fileName))
					for nav_CD in results {
						let nav_CD_DB = Nav_CD(context: moc)
						nav_CD_DB.navIdent_CD = nav_CD.navIdent
						tempArray.append(nav_CD_DB)
					}
					moc.performAndWait {
						do {
							try moc.save()
						} catch {
							print(error)
						}}
		} catch {print(error)}
					DispatchQueue.main.async {
						//print("Nav_CD Done Loading into CoreData")
						self.cduIncDelegate?.cduDoneLoading()
	}}}


	func deleteAllFromDB(pc: NSPersistentContainer) {
		let moc = pc.viewContext
		let deleteNav_CD = NSBatchDeleteRequest(fetchRequest: Nav_CD.fetchRequest())
		do {
			try moc.execute(deleteNav_CD)
			try moc.save()
			print("All Nav_CD were succesfully deleted from CoreData")
		} catch {
			print("Nope")
		}
	}


	func getAll(pc: NSPersistentContainer) -> [Nav_CD] {
		let moc = pc.viewContext
		var nav_CD = [Nav_CD]()
		let nav_CDFetchRequest = NSFetchRequest<Nav_CD>(entityName: "Nav_CD")
		do {
			nav_CD = try moc.fetch(nav_CDFetchRequest)
		} catch {
			print(error)
		}
		return nav_CD
	}
}