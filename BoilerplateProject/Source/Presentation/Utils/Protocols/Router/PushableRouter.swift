//
//  PushableRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol PushableRouter: ShowableRouter {
    var presentingViewController: UINavigationController { get }
}

extension PushableRouter {
    func show(viewController: UIViewController, animated: Bool) {
        currentViewController = viewController
        self.presentingViewController.pushViewController(viewController, animated: animated)
    }
}
