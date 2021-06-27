//
//  UsersVC+Protocol.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation
import NVActivityIndicatorView


extension UsersViewController: IUsersView {
    
    func showIndicatorView() {
        animating(loading: loading)
        loading.startAnimating()
    }
    
    func hideIndicatorView() {
        animating(loading: loading)
        loading.stopAnimating()
    }
    
    func fetchDataSuccessfully() {
        tableView.reloadData()
    }
    
    func ErrorUsersData() {
        showErrorAlert()
    }
    
    
}
