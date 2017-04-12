//
//  MAItemCell.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/11/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class MAItemCell: UITableViewCell {

    // Constants
    public static let CellIdentifier = "MenuItemCellIdentifier"
    
    // IBOutlets
    @IBOutlet var containterView: UIView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var lblPrice: UILabel!
    
    
    // MARK: LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = UITableViewCellSelectionStyle.none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

// MARK: Public Functions

extension MAItemCell {
    
    public func bind(withItem item: MAMenuItem) {
        containterView.layer.cornerRadius = 10
        
        lblName.text = item.name
        lblDesc.text = item.shortDesc
        lblPrice.text = String(format: "$%.02f", item.price)
    }
    
}
