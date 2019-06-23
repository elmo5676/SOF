

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
						//print("Ils_CD Done Loading into CoreData")
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
}