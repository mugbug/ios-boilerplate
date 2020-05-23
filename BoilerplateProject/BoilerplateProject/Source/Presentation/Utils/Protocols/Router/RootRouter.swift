//
//  RootRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol RootRouter: ShowableRouter {
    var presentingViewController: UINavigationController { get }
}

extension RootRouter {
    func show(viewController: UIViewController, animated: Bool) {
        currentViewController = viewController
        presentingViewController.viewControllers = [viewController]
    }
}
