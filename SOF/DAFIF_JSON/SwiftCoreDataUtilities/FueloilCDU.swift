

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
						//print("Fueloil_CD Done Loading into CoreData")
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
}