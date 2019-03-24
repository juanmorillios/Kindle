//
//  Book.swift
//  Kindle
//
//  Created by Jmorillo on 17/03/2019.
//  Copyright © 2019 MorilloApps. All rights reserved.
//

import Foundation

class Book {
    
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title = title
        self.author = author
        self.pages = pages
    }
}
