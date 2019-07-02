//
//  CustomCellViewController.swift
//  CustomCell
//
//  Created by Seungjun Lim on 02/07/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit


class CustomCellViewController: UIViewController {
    
    let list = WorldTime.generateData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}



extension CustomCellViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let target = list[indexPath.row]
        cell.textLabel?.text = target.location
        cell.detailTextLabel?.text = "\(target.date) \(target.time)"
        
        return cell
    }
}

