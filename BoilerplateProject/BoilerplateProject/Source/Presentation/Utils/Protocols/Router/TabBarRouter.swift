//
//  TabBarRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol TabBarRouter: RootRouter {
    var tabRouters: [Router] { get set }
    var tabBarController: UITabBarController { get }
    func configureTabBar() -> [Router]
}

extension TabBarRouter {
    func createViewController() -> UIViewController {
        self.tabRouters = configureTabBar()
        self.presentingViewController.isNavigationBarHidden = true
        return tabBarController
    }
}
