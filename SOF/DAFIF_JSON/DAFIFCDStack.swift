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
		let arpt = ArptCDU()
	}

	func deleteAllCoreData() {
		let pc = self.persistentContainer
		ArptCDU().deleteAllFromDB(pc: pc)
	}

	func countAllCoreData() {
		let pc = self.persistentContainer
		print("Arpt Entries:: \(ArptCDU().getAll(pc: pc).count)")
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