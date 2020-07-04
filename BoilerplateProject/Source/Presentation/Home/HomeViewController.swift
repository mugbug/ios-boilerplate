//
//  HomeViewController.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
import ViewCodeHelper

extension UIView: Builder {}

final class HomeViewController: UIViewController {

    private let presenter: HomePresenterProtocol

    private let label = UILabel()
        .. \.text <- "Hello"
        .. \.font <- .systemFont(ofSize: 40)
        .. \.textColor <- .white

    init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        buildView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController: ViewCodeProtocol {
    func setupHierarchy() {
        view.addSubviewToCenter(subview: label)
    }

    func setupConstraints() { }

    func additionalSetup() {
        view..\.backgroundColor <- .green
        title = "Home"
    }
}

extension HomeViewController: HomeViewDelegate {}
