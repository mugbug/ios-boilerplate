//
//  AppRouter.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

final class AppRouter: Router {
    private let window: UIWindow?
    var presentingViewController: UINavigationController
    var currentViewController: UIViewController?

    init(window: UIWindow?, presentingViewController: UINavigationController = UINavigationController()) {
        self.window = window
        self.presentingViewController = presentingViewController
    }

    func start(animated: Bool = false) {
        window?.rootViewController = presentingViewController
        window?.makeKeyAndVisible()
        let router = TabBarSceneRouter(
            presentingViewController: presentingViewController
        )
        router.start()
    }
}
