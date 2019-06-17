//
//  AppDelegate.swift
//  SOF
//
//  Created by Matthew Elmore on 6/8/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit
import CoreData
import AWSAppSync


protocol DeviceOrientationDelegate {
    func getOrientation(_ orientation: DeviceOrientation)
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    var deviceOrientationDelegate: DeviceOrientationDelegate?
    var window: UIWindow?
    let titles = ["Normal","Emergency", "Static"]
    
    func didRotate(_ notification: Notification) -> Void {
        switch UIDevice.current.orientation {
        case .landscapeLeft, .landscapeRight:
            deviceOrientationDelegate?.getOrientation(.landscape)
        case .portrait, .portraitUpsideDown:
            deviceOrientationDelegate?.getOrientation(.portrait)
        default:
            print("other")
        }}
    
    
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
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        splitViewController.delegate = self
        let masterNavigationController = splitViewController.viewControllers[0] as! UINavigationController
        let masterController = masterNavigationController.topViewController as! MasterViewController
        masterController.initialSetupOfContent()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //AWS
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            
            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  cacheConfiguration: cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
        
        
        NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification,
                                               object: nil,
                                               queue: .main,
                                               using: didRotate)
        
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
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard (secondaryAsNavController.topViewController as? DetailViewController) != nil else { return false }
        return false
    }

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

