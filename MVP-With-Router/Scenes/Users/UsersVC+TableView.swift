//
//  UsersVC+TableView.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import UIKit

extension UsersViewController: UITableViewDataSource {
    
    
    func setupTableView() {
        // confirm to data source protocol
        tableView.dataSource = self
        
        // create nib file
        let nibFile = UINib(nibName: "UsersViewCell", bundle: nil)
        tableView.register(nibFile, forCellReuseIdentifier: cellIdentifier)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! UsersViewCell
        
        // configure cell...
        cell.nameLabel.text = "Ahmed"
        cell.usernameLabel.text = "Amin"
        cell.emailLabel.text = "AhmedAminHassanIsmail@gmail.com"
        
        return cell
    }

}
