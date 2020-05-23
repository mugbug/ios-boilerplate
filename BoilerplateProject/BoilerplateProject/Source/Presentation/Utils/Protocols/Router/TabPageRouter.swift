//
//  TabPageRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol TabPageRouter: ShowableRouter {
    var presentingViewController: UINavigationController? { get set }
    var tabBarController: UITabBarController { get }
    var item: UITabBarItem { get }
}

extension TabPageRouter {

    func show(viewController: UIViewController, animated: Bool) {
        wrapViewControllerOnNavigation(viewController)
        configureViewControllerItem()
        appendViewControllerOnTabbar()
    }

    func select(tab: TabBarItem) {
        tabBarController.selectedIndex = tab.rawValue
    }

    private func wrapViewControllerOnNavigation(_ viewController: UIViewController) {
        let navigationController = UINavigationController(rootViewController: viewController)
        presentingViewController = navigationController
        currentViewController = viewController
    }

    private func configureViewControllerItem() {
        currentViewController?.tabBarItem = item
    }

    private func appendViewControllerOnTabbar() {
        guard let navigationController = presentingViewController else {
            fatalError("PresentingViewController should be previously created")
        }
        var viewControllers = tabBarController.viewControllers ?? []
        viewControllers.append(navigationController)
        tabBarController.setViewControllers(viewControllers, animated: true)
    }
}
