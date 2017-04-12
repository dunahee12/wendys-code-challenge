//
//  MAMenuItemList.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/10/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class MAMenuItemList: NSObject {
    
    // Public Vars
    public var items: NSArray!
    public var type: MAMenuType!

    /* Custom init that accepts JSON array
       and creates list of Menu Items from it
     */
    init(withJSONArray jsonArray: NSArray) {
        let mutableDict = NSMutableArray()
        
        for dictionary in jsonArray {
            let menuItem = MAMenuItem(witDictionary: dictionary as! NSDictionary)
            mutableDict.add(menuItem)
        }
        
        items = NSArray(array: mutableDict)
    }
    
}
