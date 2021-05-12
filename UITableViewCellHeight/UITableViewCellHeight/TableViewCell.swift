//
//  TableViewCell.swift
//  UITableViewCellHeight
//
//  Created by Thongchai Subsaidee on 12/5/2564 BE.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var setTitleLabel: String? {
        didSet {
            titleLabel.text = setTitleLabel ?? ""
        }
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.numberOfLines = 0
        return label
    }()
    
    let boxView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100)
        view.backgroundColor = .blue
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        contentView.addSubview(titleLabel)
//        contentView.addSubview(boxView)
        
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        

//        boxView.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5).isActive = true
//        boxView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
//        boxView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
////        boxView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
//        boxView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
}
