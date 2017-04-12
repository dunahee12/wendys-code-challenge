//
//  MARootMenuCell.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/10/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class MARootMenuCell: UITableViewCell {
    
    // Constants
    public static let CellIdentifier = "RootMenuCellIdentifier"
    
    // IBOutlets
    @IBOutlet var containerView: UIView!
    @IBOutlet var ivMenuImage: UIImageView!
    @IBOutlet var lblMenuText: UILabel!

    
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

extension MARootMenuCell {
    
    public func bind(withImage image: UIImage, name: String, count: Int) {
        containerView.layer.cornerRadius = 10
        
        ivMenuImage.image = image
        lblMenuText.text = name
    }
    
}
