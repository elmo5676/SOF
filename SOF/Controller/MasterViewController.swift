//
//  MasterViewController.swift
//  BRI Swift
//
//  Created by Matthew Elmore on 6/5/19.
//  Copyright © 2019 Matthew Elmore. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var detailViewController: DetailViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }}

    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        initialSetupOfContent()
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    var tab: TabDetailContentController!
    func initialSetupOfContent() {
        guard let tab = super.tabBarController?.selectedIndex else { return }
        msterViewTitle.title = AppDelegate().titles[tab]
        self.tab = TabDetailContentController(tab: tab)
        headers = self.tab.headers()
    }

    // MARK: - Segues
    var object = ""
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showDetail" :
            print("This segue")
            if let indexPath = tableView.indexPathForSelectedRow {
                object = tab.passContentToDetail(indexPath: indexPath)
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.tempLabelText = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        case "setStatus":
            if let indexPath = tableView.indexPathForSelectedRow {
                object = tab.passContentToDetail(indexPath: indexPath)
                let controller = (segue.destination as! UINavigationController).topViewController as! SetStatusTableViewController
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
            print("I hate coding on an airplane!!!!!")
//            let icaos = ["KBAB","KSFO","KAPA","KDFW","KRND"]
//            let notams = NotamDownLoader(icaos: icaos, delagate: self)
        default:
            print("No segue for you!!")
        }
        
    }

    // MARK: - Table View
    var headers: [String] = []

    @IBOutlet weak var msterViewTitle: UINavigationItem!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tab.numerOfRowsIn(section: section)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tab.titleForHeaderIn(section: section)
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tab.cellForRowAt(indexPath: indexPath, on: tableView)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "setStatus", sender: nil)
    }



    


}

