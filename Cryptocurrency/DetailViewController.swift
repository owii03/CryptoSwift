//
//  DetailViewController.swift
//  Cryptocurrency
//
//  Created by Owii on 16/04/20.
//  Copyright © 2020 DataEdukasi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameCoin: UILabel!
    
    @IBOutlet weak var photoCoin: UIImageView!
    
    @IBOutlet weak var descCoin: UILabel!
    
    var coin: Coin?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       if let result = coin {
           photoCoin.image = result.photo
           nameCoin.text = result.name
           descCoin.text = result.description
       }
    }
}
