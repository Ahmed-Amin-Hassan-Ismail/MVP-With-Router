//
//  DetailPresenter.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/28/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

class DetailPresenter {
    
   var user: UsersModel
    private var view: IDetailView
    private var router: IDetailRouter
    
    init(user: UsersModel, view: IDetailView, router: IDetailRouter) {
        self.user = user
        self.view = view
        self.router = router
    }
}
