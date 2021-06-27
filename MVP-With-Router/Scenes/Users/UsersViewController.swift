//
//  UsersViewController.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {
    
    // instance variables
    let cellIdentifier = "usersCell"

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

}
