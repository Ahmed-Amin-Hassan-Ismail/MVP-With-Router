//
//  Presenter+Confirming.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/28/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

extension DetailPresenter: IDetailPresenter {
    
    func displayUser(for view: DetailUserView) {
        view.nameLabel.text = user.name
        view.usernameLabel.text = user.username
        view.emailLabel.text = user.email
        view.telephoneLabel.text = user.phone
        view.streetLabel.text = user.address?.street
        view.suiteLabel.text = user.address?.suite
        view.cityLabel.text = user.address?.city
    }
    
    
   
}
