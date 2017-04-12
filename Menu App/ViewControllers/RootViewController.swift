//
//  ViewController.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/10/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    // Constants
    let ITEM_LIST_SEGUE_IDENTIFIER = "ITEM_LIST_SEGUE"

    // Local Vars
    var selectedListType: MAMenuType?
    
    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: Navigation

extension RootViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ITEM_LIST_SEGUE_IDENTIFIER {
            let itemListVC = segue.destination as! ItemListViewController
            itemListVC.listType = selectedListType!
        }
    }
    
}

// MARK: UITableView

extension RootViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rootCell = tableView.dequeueReusableCell(withIdentifier: MARootMenuCell.CellIdentifier) as! MARootMenuCell
        
        switch indexPath.row {
            case 0: rootCell.bind(withImage: UIImage(named: "burger")!, name: "Burgers", count: 10); break
            case 1: rootCell.bind(withImage: UIImage(named: "onionrings")!, name: "Appetizers", count: 10); break
            case 2: rootCell.bind(withImage: UIImage(named: "soda")!, name: "Drinks", count: 10); break
            default: break
        }
        
        return rootCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    // MARK: Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
            case 0: selectedListType = MAMenuType.Burger; break
            case 1: selectedListType = MAMenuType.Appetizer; break
            case 2: selectedListType = MAMenuType.Drink; break
            default: break
        }
        
        self.performSegue(withIdentifier: ITEM_LIST_SEGUE_IDENTIFIER, sender: self)
    }
}

