//
//  ViewController.swift
//  Kindle
//
//  Created by Jmorillo on 17/03/2019.
//  Copyright © 2019 MorilloApps. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Kindle"
       self.view.backgroundColor = .blue
        
        // Load data
        setupBooks()
    }
    
    // Sample Data
    func setupBooks() {
        
        let page1 = Page(number: 1, text: "My first page")
        let page2 = Page(number: 2, text: "My second page")
        
        let pages = [page1, page2]
        
        let book1 = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages)
        let book2 = Book(title: "Bill Gates", author: "Michael Becraft", pages: pages)
        
        guard let books = self.books else { return }
        print(books)
        
    }
    
    


}

