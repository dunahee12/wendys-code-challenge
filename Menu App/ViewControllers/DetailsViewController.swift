//
//  DetailsViewController.swift
//  Menu App
//
//  Created by Jake Dunahee on 4/11/17.
//  Copyright © 2017 Jake Dunahee. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // Public Vars
    public var item: MAMenuItem!
    
    // IBOutlets
    @IBOutlet var ivIcon: UIImageView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblDesc: UILabel!

    
    // MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivIcon.image = item.icon
        lblName.text = item.name
        lblDesc.text = item.fullDesc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: Actions

extension DetailsViewController {
    
    @IBAction func handleButtonClose(button: UIButton) {
        dismiss(animated: true, completion: nil);
    }
    
}
