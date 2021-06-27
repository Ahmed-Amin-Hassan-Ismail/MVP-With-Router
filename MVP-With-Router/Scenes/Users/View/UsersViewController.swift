//
//  UsersViewController.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class UsersViewController: UIViewController {
    
    // instance variables
    let cellIdentifier = "usersCell"
    let loading = NVActivityIndicatorView(frame: .zero, type: .circleStrokeSpin, color: .black, padding: 0)
    var presenter: UsersPresenter!
    var interactor = UsersInteractor()
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = " Users "
        
        // hide empty view
        tableView.tableFooterView = UIView()
         
        // set up table view
        setupTableView()
        
        presenter = UsersPresenter(view: self, userInterator: interactor)
        presenter.viewDidLoad()
        
    }
    
    //MARK: - Helper Methods
    
    func showErrorAlert() {
        let alert = UIAlertController(title: "Something went wrong", message: "There's something went wrong please try again later.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { [weak self] (_) in
            self?.dismiss(animated: true, completion: nil)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func animating(loading: NVActivityIndicatorView) {
        loading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loading)
        NSLayoutConstraint.activate([
            loading.widthAnchor.constraint(equalToConstant: 40),
            loading.heightAnchor.constraint(equalToConstant: 40),
            loading.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loading.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
