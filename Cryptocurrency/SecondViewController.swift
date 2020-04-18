//
//  SecondViewController.swift
//  Cryptocurrency
//
//  Created by Owii on 16/04/20.
//  Copyright © 2020 DataEdukasi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoProfile: UIImageView!
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var emailProfile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Profile"
        
    }


}

