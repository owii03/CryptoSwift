//
//  FirstViewController.swift
//  Cryptocurrency
//
//  Created by Owii on 16/04/20.
//  Copyright © 2020 DataEdukasi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var coinTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Cryptocurrency List"
        coinTableView.dataSource = self
        coinTableView.delegate = self
        coinTableView.register(UINib(nibName: "CoinTableViewCell", bundle: nil), forCellReuseIdentifier: "CoinCell")

    }
}

extension FirstViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CoinCell", for: indexPath) as! CoinTableViewCell
            
        let coin = coins[indexPath.row]
        cell.nameCoin.text = coin.name
        cell.descCoin.text = coin.description
        cell.photoCoin.image = coin.photo
            
        // Kode ini digunakan untuk membuat imageView memiliki frame bound/lingkaran
        cell.photoCoin.layer.cornerRadius = cell.photoCoin.frame.height / 2
        cell.photoCoin.clipsToBounds = true
        return cell
    }
    
}

extension FirstViewController: UITableViewDelegate{
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        // Mengirim data hero
        detail.coin = coins[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
