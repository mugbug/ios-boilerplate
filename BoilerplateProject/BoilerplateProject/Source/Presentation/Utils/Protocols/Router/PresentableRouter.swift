//
//  PresentableRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol PresentableRouter: ShowableRouter {
    var presentingViewController: UIViewController { get }
}

extension PresentableRouter {
    func show(viewController: UIViewController, animated: Bool) {
        currentViewController = viewController
        presentingViewController.present(viewController, animated: animated)
    }
}
