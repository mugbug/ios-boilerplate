//
//  HomeViewController.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

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

extension HomeViewController {
    func buildView() {
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        additionalSetup()
    }

    func additionalSetup() {
        view..\.backgroundColor <- .green
        title = "Home"
    }
}

extension HomeViewController: HomeViewDelegate {}
