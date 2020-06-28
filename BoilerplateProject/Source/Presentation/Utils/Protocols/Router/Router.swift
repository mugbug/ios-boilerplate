//
//  Router.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

protocol Router: class {
    var currentViewController: UIViewController? { get }
    func start()
    func start(animated: Bool)
}

extension Router {
    func start() {
        start(animated: true)
    }
}
