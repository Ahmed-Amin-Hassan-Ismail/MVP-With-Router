//
//  Presenter-Protocols.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

// MARK: - UsersVC protocol

protocol IUsersView: class {
    func showIndicatorView()
    func hideIndicatorView()
    func fetchDataSuccessfully()
    func ErrorUsersData() 
}


// MARK: - Users Presenter protocol

protocol IUsersPresenter {
    func getCount() -> Int
    func displayData(for cell: UsersViewCell, in index: Int)
}
