//
//  MAMenuFactory.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/10/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class MAMenuFactory: NSObject {
    
    // BURGERS
    public class func burgerList() -> MAMenuItemList {
        let burgerMenuArray: NSArray = [
            [
                ItemIdentifierKey: "burgers1",
                ItemNameKey: "The Best Burger",
                ItemShortDescriptionKey: "King of burgers",
                ItemFullDescriptionKey: "This burger wears a crown because it's the king.",
                ItemPriceKey: 7.99,
                ItemTypeKey: "B"
            ],
            [
                ItemIdentifierKey: "burger2",
                ItemNameKey: "The 'Okay' Burger",
                ItemShortDescriptionKey: "Ehhhh",
                ItemFullDescriptionKey: "This burger is... okay.",
                ItemPriceKey: 3.99,
                ItemTypeKey: "B"
            ],
            [
                ItemIdentifierKey: "burger3",
                ItemNameKey: "The Nasty",
                ItemShortDescriptionKey: "This burger is horrible",
                ItemFullDescriptionKey: "When people eat these burgers, they tend to vomit.",
                ItemPriceKey: 0.01,
                ItemTypeKey: "B"
            ]
        ]
        
        let menuList = MAMenuItemList(withJSONArray: burgerMenuArray)
        return menuList
    }
    
    // APPETIZERS
    public class func appetizerList() -> MAMenuItemList {
        let appetizerMenuArray: NSArray = [
            [
                ItemIdentifierKey: "app1",
                ItemNameKey: "Onion Rings",
                ItemShortDescriptionKey: "Delicious",
                ItemFullDescriptionKey: "Classic onion rings. Can't go wrong. Unless you hate onions.",
                ItemPriceKey: 1.99,
                ItemTypeKey: "A"
            ],
            [
                ItemIdentifierKey: "app2",
                ItemNameKey: "French Fries",
                ItemShortDescriptionKey: "Golden and crispy",
                ItemFullDescriptionKey: "Thin, thick, crispy, and soggy. All in one basket of fries.",
                ItemPriceKey: 0.99,
                ItemTypeKey: "A"
            ],
            [
                ItemIdentifierKey: "app3",
                ItemNameKey: "Fried Mushrooms",
                ItemShortDescriptionKey: "The name says it all",
                ItemFullDescriptionKey: "We can't really explain it any better than just 'Fried Mushrooms'.",
                ItemPriceKey: 2.99,
                ItemTypeKey: "A"
            ]
        ]
        
        let menuList = MAMenuItemList(withJSONArray: appetizerMenuArray)
        return menuList
    }
    
    // DRINKS
    public class func drinkList() -> MAMenuItemList {
        let drinksMenuArray: NSArray = [
            [
                ItemIdentifierKey: "drink1",
                ItemNameKey: "Pop",
                ItemShortDescriptionKey: "Generic pop",
                ItemFullDescriptionKey: "Bubbly and amazing.",
                ItemPriceKey: 1.99,
                ItemTypeKey: "D"
            ],
            [
                ItemIdentifierKey: "drink2",
                ItemNameKey: "Lemonade",
                ItemShortDescriptionKey: "Fresh fresh fresh",
                ItemFullDescriptionKey: "Fresh squeezed lemonade. Ice cold. Yum.",
                ItemPriceKey: 2.49,
                ItemTypeKey: "D"
            ],
            [
                ItemIdentifierKey: "drink3",
                ItemNameKey: "Coffee",
                ItemShortDescriptionKey: "Mmmm",
                ItemFullDescriptionKey: "Everyone can use a cup of coffee.",
                ItemPriceKey: 0.99,
                ItemTypeKey: "D"
            ]
        ]
        
        let menuList = MAMenuItemList(withJSONArray: drinksMenuArray)
        return menuList
    }

}
