//
//  AppDelegate.swift
//  SOF
//
//  Created by Matthew Elmore on 6/8/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
// SwiftyBeaver - https://docs.swiftybeaver.com/article/6-basic-setup

import UIKit
import CoreData
import AWSAppSync
import AWSMobileClient

let log = SwiftyBeaver.self
let platform = SBPlatformDestination(appID: "0G8El1", appSecret: "aygqlbHflrCpv9ecimhkrvbatrgqiapJ", encryptionKey: "UUxflcvH1fEljoe8qRjknQz6hdxIkNaw")

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    let log = SwiftyBeaver.self
    var window: UIWindow?
    let titles = ["Normal","Emergency", "Normal"]
    var masterVC: UIViewController?
    
    
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
        if let masterVC = splitViewController.viewControllers.first {
            self.masterVC = masterVC
            log.debug(masterVC.view.frame.width)
        }
        splitViewController.delegate = self
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //AWS
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let userState = userState {
                print("UserState: \(userState.rawValue)")
            } else if let error = error {
                print("error: \(error.localizedDescription)")
            }
        }
        do {
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  cacheConfiguration: cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
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
        AWSMobileClient.sharedInstance().signOut()
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        AWSMobileClient.sharedInstance().signOut()
        self.saveContext()
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

