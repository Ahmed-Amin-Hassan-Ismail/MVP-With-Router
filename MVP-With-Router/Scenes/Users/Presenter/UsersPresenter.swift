//
//  UsersPresenter.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

class UsersPresenter {
    
    private var userInteractor: UsersInteractor!
    private weak var view: IUsersView?
    var users = [UsersModel]()
    
    init(view: IUsersView, userInterator: UsersInteractor) {
        self.view = view
        self.userInteractor = userInterator
    }
    
    func viewDidLoad() {
        getData()
    }
    
    private func getData() {
        view?.showIndicatorView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self = self else { return }
            self.userInteractor.fetchData { (result) in
                self.view?.hideIndicatorView()
                switch result {
                case .success(let users):
                    guard let users = users else { return }
                    self.users = users
                    self.view?.fetchDataSuccessfully()
                case .failure(_):
                    self.view?.ErrorUsersData()
                }
            }
        }
    }
}
