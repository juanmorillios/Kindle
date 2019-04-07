//
//  BookCell.swift
//  Kindle
//
//  Created by Jmorillo on 07/04/2019.
//  Copyright © 2019 MorilloApps. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .orange
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
