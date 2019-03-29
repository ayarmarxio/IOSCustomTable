//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by admin on 29/03/2019.
//  Copyright © 2019 Mario. All rights reserved.
//

import UIKit

struct CellData {
    let image: UIImage?
    let message: String?
}


class TableViewController: UITableViewController {
    
    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        data = [CellData.init(image: UIImage(named: "jaguar.jpg"), message: "Awesome image!!"), CellData.init(image: UIImage(named: "Classic.png"), message: "Awesome image!!"), CellData.init(image: UIImage(named: "jaguar.jpg"), message: "Awesome image!!"), CellData.init(image: UIImage(named: "Classic.png"), message: "Awesome image!!")]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        
        cell.mainImage = data[indexPath.row].image
        cell.message = data[indexPath.row].message
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
  
}

