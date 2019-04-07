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
       
        // Load data
        setupBooks()
       
        //Register celId
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        
        //Hide FooterView
        tableView.tableFooterView = UIView()
    }
    
    // Sample Data
    func setupBooks() {
        
        let page1 = Page(number: 1, text: "My first page")
        let page2 = Page(number: 2, text: "My second page")
        
        let pages = [page1, page2]
        
        let book1 = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: pages, image: #imageLiteral(resourceName: "steve_jobs"))
        let book2 = Book(title: "Bill Gates", author: "Michael Becraft", pages: pages, image: #imageLiteral(resourceName: "bill_gates"))
        
        books = [book1, book2]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = books?.count {
            return count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let book = books?[indexPath.row]
        
        cell.textLabel?.text = book?.title
        cell.imageView?.image = book?.image
        
        return cell
    }
    

}

