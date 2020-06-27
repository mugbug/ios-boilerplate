//
//  HomeViewController.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    private let presenter: HomePresenterProtocol

    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .green
        title = "Home"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController: HomeViewDelegate {}
