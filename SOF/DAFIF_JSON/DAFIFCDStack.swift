import Foundation
import CoreData
import UIKit


class DAFIFCDStack: DafifCoreDataIncrementorDelegate {


	var wantedData: [FileNames] = [.arpt,.acomRmk,.acom,.agear,.anav,.ils,.rwy,.nav,.trmClb,.trmMin,.trmMsa,.trmPar,.trmRmk,.trmSeg,.addRwy,.fueloil,.gen,.svcRmk,]

	var cduCounter = 0
	func cduDoneLoading() {
		cduCounter += 1
		print("Number Of DAFIF to be loaded: \(wantedData.count - cduCounter)")
	}

	func loadJsonIntoCoreData() {
		let pc = self.persistentContainer
		let arpt = ArptCDU()		arpt.cduIncDelegate = self		arpt.loadIntoCoreData(pc: pc)		let acomRmk = AcomRmkCDU()		acomRmk.cduIncDelegate = self		acomRmk.loadIntoCoreData(pc: pc)		let acom = AcomCDU()		acom.cduIncDelegate = self		acom.loadIntoCoreData(pc: pc)		let agear = AgearCDU()		agear.cduIncDelegate = self		agear.loadIntoCoreData(pc: pc)		let anav = AnavCDU()		anav.cduIncDelegate = self		anav.loadIntoCoreData(pc: pc)		let ils = IlsCDU()		ils.cduIncDelegate = self		ils.loadIntoCoreData(pc: pc)		let rwy = RwyCDU()		rwy.cduIncDelegate = self		rwy.loadIntoCoreData(pc: pc)		let nav = NavCDU()		nav.cduIncDelegate = self		nav.loadIntoCoreData(pc: pc)		let trmClb = TrmClbCDU()		trmClb.cduIncDelegate = self		trmClb.loadIntoCoreData(pc: pc)		let trmMin = TrmMinCDU()		trmMin.cduIncDelegate = self		trmMin.loadIntoCoreData(pc: pc)		let trmMsa = TrmMsaCDU()		trmMsa.cduIncDelegate = self		trmMsa.loadIntoCoreData(pc: pc)		let trmPar = TrmParCDU()		trmPar.cduIncDelegate = self		trmPar.loadIntoCoreData(pc: pc)		let trmRmk = TrmRmkCDU()		trmRmk.cduIncDelegate = self		trmRmk.loadIntoCoreData(pc: pc)		let trmSeg = TrmSegCDU()		trmSeg.cduIncDelegate = self		trmSeg.loadIntoCoreData(pc: pc)		let addRwy = AddRwyCDU()		addRwy.cduIncDelegate = self		addRwy.loadIntoCoreData(pc: pc)		let fueloil = FueloilCDU()		fueloil.cduIncDelegate = self		fueloil.loadIntoCoreData(pc: pc)		let gen = GenCDU()		gen.cduIncDelegate = self		gen.loadIntoCoreData(pc: pc)		let svcRmk = SvcRmkCDU()		svcRmk.cduIncDelegate = self		svcRmk.loadIntoCoreData(pc: pc)
	}

	func deleteAllCoreData() {
		let pc = self.persistentContainer
		ArptCDU().deleteAllFromDB(pc: pc)		AcomRmkCDU().deleteAllFromDB(pc: pc)		AcomCDU().deleteAllFromDB(pc: pc)		AgearCDU().deleteAllFromDB(pc: pc)		AnavCDU().deleteAllFromDB(pc: pc)		IlsCDU().deleteAllFromDB(pc: pc)		RwyCDU().deleteAllFromDB(pc: pc)		NavCDU().deleteAllFromDB(pc: pc)		TrmClbCDU().deleteAllFromDB(pc: pc)		TrmMinCDU().deleteAllFromDB(pc: pc)		TrmMsaCDU().deleteAllFromDB(pc: pc)		TrmParCDU().deleteAllFromDB(pc: pc)		TrmRmkCDU().deleteAllFromDB(pc: pc)		TrmSegCDU().deleteAllFromDB(pc: pc)		AddRwyCDU().deleteAllFromDB(pc: pc)		FueloilCDU().deleteAllFromDB(pc: pc)		GenCDU().deleteAllFromDB(pc: pc)		SvcRmkCDU().deleteAllFromDB(pc: pc)
	}

	func countAllCoreData() {
		let pc = self.persistentContainer
		print("Arpt Entries:: \(ArptCDU().getAll(pc: pc).count)")		print("AcomRmk Entries:: \(AcomRmkCDU().getAll(pc: pc).count)")		print("Acom Entries:: \(AcomCDU().getAll(pc: pc).count)")		print("Agear Entries:: \(AgearCDU().getAll(pc: pc).count)")		print("Anav Entries:: \(AnavCDU().getAll(pc: pc).count)")		print("Ils Entries:: \(IlsCDU().getAll(pc: pc).count)")		print("Rwy Entries:: \(RwyCDU().getAll(pc: pc).count)")		print("Nav Entries:: \(NavCDU().getAll(pc: pc).count)")		print("TrmClb Entries:: \(TrmClbCDU().getAll(pc: pc).count)")		print("TrmMin Entries:: \(TrmMinCDU().getAll(pc: pc).count)")		print("TrmMsa Entries:: \(TrmMsaCDU().getAll(pc: pc).count)")		print("TrmPar Entries:: \(TrmParCDU().getAll(pc: pc).count)")		print("TrmRmk Entries:: \(TrmRmkCDU().getAll(pc: pc).count)")		print("TrmSeg Entries:: \(TrmSegCDU().getAll(pc: pc).count)")		print("AddRwy Entries:: \(AddRwyCDU().getAll(pc: pc).count)")		print("Fueloil Entries:: \(FueloilCDU().getAll(pc: pc).count)")		print("Gen Entries:: \(GenCDU().getAll(pc: pc).count)")		print("SvcRmk Entries:: \(SvcRmkCDU().getAll(pc: pc).count)")
	}


	// MARK: - Core Data stack
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "DAFIF")
		container.loadPersistentStores(completionHandler: { (storeDescription, error) in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		})
		return container
	}()

	// MARK: - Core Data Saving support
	func saveContext () {
		let context = persistentContainer.viewContext
		if context.hasChanges {
			do {
				try context.save()
			} catch {
				let nserror = error as NSError
				fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
			}}}

	lazy var moc: NSManagedObjectContext = {
		return self.persistentContainer.viewContext
	}()

	lazy var bmoc: NSManagedObjectContext = {
		return self.persistentContainer.newBackgroundContext()
	}()
}