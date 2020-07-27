//
//  SettingsViewController.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .blue
        title = "Settings"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
