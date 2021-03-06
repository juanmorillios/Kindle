//
//  Book.swift
//  Kindle
//
//  Created by Jmorillo on 17/03/2019.
//  Copyright © 2019 MorilloApps. All rights reserved.
//

import UIKit

class Book {
    
    let title: String
    let author: String
    let image: UIImage
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page], image: UIImage) {
        self.title = title
        self.author = author
        self.image = image
        self.pages = pages
    }
}
