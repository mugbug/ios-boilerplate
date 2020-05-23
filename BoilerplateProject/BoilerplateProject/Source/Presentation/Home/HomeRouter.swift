//
//  HomeRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

final class HomeRouter: TabPageRouter {
    var presentingViewController: UINavigationController?
    var currentViewController: UIViewController?

    var tabBarController: UITabBarController
    var item: UITabBarItem

    init(tabBarController: UITabBarController, item: UITabBarItem) {
        self.tabBarController = tabBarController
        self.item = item
    }

    func createViewController() -> UIViewController {
        return HomeViewController()
    }
}
