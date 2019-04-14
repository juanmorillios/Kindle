//
//  BookCell.swift
//  Kindle
//
//  Created by Jmorillo on 07/04/2019.
//  Copyright © 2019 MorilloApps. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 66, y: 20, width: UIScreen.main.bounds.width, height: 20)
        label.text = "Name Book"
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
        label.text = "Name Author"
        return label
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .orange
        self.addSubview(coverImageView)
        self.addSubview(titleLabel)
        self.addSubview(authorLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
