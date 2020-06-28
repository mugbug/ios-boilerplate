//
//  RootSceneRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

final class TabBarSceneRouter: TabBarRouter {
    var tabRouters: [Router] = []
    var tabBarController: UITabBarController
    var presentingViewController: UINavigationController
    var currentViewController: UIViewController?

    init(presentingViewController: UINavigationController,
         tabBarController: UITabBarController = UITabBarController()) {
        self.presentingViewController = presentingViewController
        self.tabBarController = tabBarController
    }

    func configureTabBar() -> [Router] {
        return TabBarItem.allCases.map { $0.makeRouter(in: tabBarController) }
    }
}
