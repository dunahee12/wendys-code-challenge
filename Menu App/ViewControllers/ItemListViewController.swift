//
//  ItemListViewController.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/11/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    
    // Constants
    let DETAILS_SEGUE_IDENTIFIER = "DETAILS_SEGUE"
    
    // Public vars
    public var listType: MAMenuType!
    
    // IBOutlets
    @IBOutlet var ivIcon: UIImageView!
    @IBOutlet var btnBack: UIButton!
    
    // Internal vars
    var itemList: MAMenuItemList!
    var selectedItem: MAMenuItem?

    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch listType as MAMenuType {
            case MAMenuType.Burger:
                itemList = MAMenuFactory.burgerList();
                ivIcon.image = UIImage(named: "burger")
                btnBack.setTitle("Burgers", for: UIControlState.normal)
                
                break
        
            case MAMenuType.Appetizer:
                itemList = MAMenuFactory.appetizerList()
                ivIcon.image = UIImage(named: "onionrings")
                btnBack.setTitle("Appetizers", for: UIControlState.normal)
            
                break
            
            case MAMenuType.Drink:
                itemList = MAMenuFactory.drinkList()
                ivIcon.image = UIImage(named: "soda")
                btnBack.setTitle("Drinks", for: UIControlState.normal)
            
                break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: Navigation

extension ItemListViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DETAILS_SEGUE_IDENTIFIER {
            let detailsVC = segue.destination as! DetailsViewController
            detailsVC.item = selectedItem!
        }
    }
    
}

// MARK: Actions

extension ItemListViewController {
    
    @IBAction func handleButtonBack(button: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: UITableView

extension ItemListViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if itemList == nil {
            return 0
        }
        
        return itemList.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = itemList.items[indexPath.row] as! MAMenuItem
        
        let itemCell = tableView.dequeueReusableCell(withIdentifier: MAItemCell.CellIdentifier) as! MAItemCell
        itemCell.bind(withItem: item)
        
        return itemCell
    }
    
    // MARK: Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itemList.items[indexPath.row] as! MAMenuItem
        selectedItem = item
        
        performSegue(withIdentifier: DETAILS_SEGUE_IDENTIFIER, sender: self)
    }
    
}
