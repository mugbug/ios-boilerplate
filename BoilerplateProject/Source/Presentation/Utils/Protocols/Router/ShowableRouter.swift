//
//  ShowableRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol ShowableRouter: Router {
    var currentViewController: UIViewController? { get set }
    func createViewController() -> UIViewController
    func show(viewController: UIViewController, animated: Bool)
}

extension ShowableRouter {
    func start(animated: Bool = true) {
        let viewController = createViewController()
        show(viewController: viewController, animated: animated)
    }
}
