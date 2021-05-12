//
//  TableViewController.swift
//  UITableViewCellHeight
//
//  Created by Thongchai Subsaidee on 12/5/2564 BE.
//

import UIKit

class TableViewController: UIViewController {
    
    private let datas = [
        "The entry point of our App is the file AppDelegate.swift let’s go there and reduce the noise by deleting all functions except the one you see down below:",
        "The entry point of our App is the file AppDelegate.swift let’s go there and reduce the noise by deleting all functions except the one you see down below: The entry point of our App is the file AppDelegate.swift let’s go there and reduce the noise by deleting all functions except the one you see down below:",
        "The entry point of our App is the file AppDelegate.swift let’s go there and reduce the noise by deleting all functions except the one you see down below:"
    ]
    
    private let cellID = "CellID"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TableViewCell.self , forCellReuseIdentifier: cellID)
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        tableView.reloadData()
    }
    
    func setupView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}

// MARK: - Datasource
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TableViewCell
        cell.setTitleLabel = datas[indexPath.row]
        return cell
    }
}

// MARK: - Delegate
extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
