//
//  AppDelegate.swift
//  SOF
//
//  Created by Matthew Elmore on 6/8/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
// SwiftyBeaver - https://docs.swiftybeaver.com/article/6-basic-setup

import UIKit
import CoreData
//import AWSAppSync

let log = SwiftyBeaver.self
let platform = SBPlatformDestination(appID: "0G8El1", appSecret: "aygqlbHflrCpv9ecimhkrvbatrgqiapJ", encryptionKey: "UUxflcvH1fEljoe8qRjknQz6hdxIkNaw")

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    
//    var appSyncClient: AWSAppSyncClient?
    let log = SwiftyBeaver.self
    var window: UIWindow?
    let titles = ["Normal","Emergency", "Normal"]
    
    
    
    func customizeTabBarItems(tabBar: UITabBar) {
        let tabBarIconsNames    		= ["norm","emer","plane"]
        let tabBarSelectedIconsNames	= ["normFilled","emerFilled","planeFilled"]
        for i in 0...tabBar.items!.count - 1 {
            tabBar.items![i].title = titles[i]
            tabBar.items![i].image = UIImage(named: tabBarIconsNames[i])
            tabBar.items![i].selectedImage = UIImage(named: tabBarSelectedIconsNames[i])
        }}
    
    func loadSplitView(tabBarController: UITabBarController) {
        let splitViewController = tabBarController.viewControllers?[0] as! UISplitViewController
//        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
//        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        splitViewController.delegate = self
//        let masterNavigationController = splitViewController.viewControllers[0] as! UINavigationController
//        let masterController = masterNavigationController.topViewController as! MasterViewController
//        masterController.initialSetupOfContent()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        //AWS
//        do {
//            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
//            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
//            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
//                                                                  cacheConfiguration: cacheConfiguration)
//            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
//        } catch {
//            print("Error initializing appsync client. \(error)")
//        }
        
        //SwiftyBeaver Logger
        // add log destinations. at least one is needed!
        let console = ConsoleDestination()  // log to Xcode Console
        let file = FileDestination()  // log to default swiftybeaver.log file
        log.addDestination(console)
        log.addDestination(file)
        log.addDestination(platform)
        
        
        
        let tabBarController = self.window!.rootViewController as! UITabBarController
        tabBarController.selectedIndex = 0
        customizeTabBarItems(tabBar: tabBarController.tabBar)
        loadSplitView(tabBarController: tabBarController)
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        NotificationCenter.default.removeObserver(self,
                                                  name: UIDevice.orientationDidChangeNotification,
                                                  object: nil)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        self.saveContext()
    }
    
    // MARK: - Split view
//    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
//        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
//        guard (secondaryAsNavController.topViewController as? DetailViewController) != nil else { return false }
//        return false
//    }

    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "SOF")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }})
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

}

