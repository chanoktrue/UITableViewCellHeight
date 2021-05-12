//
//  ViewController.swift
//  UITableViewCellHeight
//
//  Created by Thongchai Subsaidee on 12/5/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    let tableView = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView.view)
        tableView.view.frame = view.frame
    }

 
}

