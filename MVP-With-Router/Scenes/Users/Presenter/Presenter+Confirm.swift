//
//  Presenter+Confirm.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

extension UsersPresenter: IUsersPresenter {
    
    func getCount() -> Int {
        return users.count
    }
    
    func displayData(for cell: UsersViewCell, in index: Int) {
        let user = users[index]
        cell.nameLabel.text = user.name
        cell.usernameLabel.text = user.username
        cell.emailLabel.text = user.email
    }
   
    func didSelectRow(at index: Int) {
        
    }
    
}
