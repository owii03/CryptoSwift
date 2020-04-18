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
    
    @IBOutlet weak var price1h: UILabel!
    @IBOutlet weak var label1h: UILabel!
    
    
    @IBOutlet weak var price24h: UILabel!
    @IBOutlet weak var label24h: UILabel!
    
    @IBOutlet weak var price7d: UILabel!
    @IBOutlet weak var label7d: UILabel!
    
    
    
    var coin: Coin?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       if let result = coin {
            photoCoin.image = result.photo
            nameCoin.text = result.name
            descCoin.text = result.description
            price1h.text = result.price1hour
            label1h.text = result.label1hour
            price24h.text = result.price24hour
            label24h.text = result.label24hour
            price7d.text = result.price7day
            label7d.text = result.label7day
       }
    }
}
