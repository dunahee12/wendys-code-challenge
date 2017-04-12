//
//  MAMenuItem.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/10/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

// Global Vars
let ItemNameKey  = "name"
let ItemIdentifierKey = "identifier"
let ItemShortDescriptionKey = "shortDesc"
let ItemFullDescriptionKey = "fullDesc"
let ItemPriceKey = "price"
let ItemTypeKey = "type"

// Menu/Item types
enum MAMenuType {
    case Burger
    case Appetizer
    case Drink
}

class MAMenuItem: NSObject {
    
    // Public Vars
    public var identifier: String!
    public var name: String!
    public var shortDesc: String!
    public var fullDesc: String!
    public var price: Double!
    public var type: MAMenuType!
    public var icon: UIImage {
        get {
            switch type as MAMenuType {
                case MAMenuType.Burger: return UIImage(named: "burger")!
                case MAMenuType.Appetizer: return UIImage(named: "onionrings")!
                case MAMenuType.Drink: return UIImage(named: "soda")!
            }
        }
    }
    
    // Custom init that creates Menu Item object from dictionary
    init(witDictionary dictionary: NSDictionary) {
        // IDENTIFIER
        if let identiferString = dictionary["identifier"] {
            identifier = identiferString as! String
        }
        
        // NAME
        if let nameString = dictionary["name"] {
           name = nameString as! String
        }
        
        // SHORT DESCRIPTION
        if let shortDescString = dictionary["shortDesc"] {
            shortDesc = shortDescString as! String
        }
        
        // FULL DESCRIPTION
        if let fullDescString = dictionary["fullDesc"] {
            fullDesc = fullDescString as! String
        }
        
        // PRICE
        if let priceValue = dictionary["price"] {
            price = priceValue as! Double
        }
        
        // TYPE
        if let typeIdentifer = dictionary["type"] {
            let stringId = typeIdentifer as! String
            switch stringId.uppercased() {
                case "B": type = MAMenuType.Burger; break
                case "A": type = MAMenuType.Appetizer; break
                case "D": type = MAMenuType.Drink; break
                default: break
            }
        }
    }

}
