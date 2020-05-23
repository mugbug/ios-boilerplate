//
//  TabBarItem.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

enum TabBarItem: Int, CaseIterable {
    case home
    case settings

    func makeRouter(in tabBarController: UITabBarController) -> Router {
        switch self {
        case .home: return makeHomeRouter(in: tabBarController)
        case .settings: return makeSettingsRouter(in: tabBarController)
        }
    }

    private func makeHomeRouter(in tabBarController: UITabBarController) -> Router {
        let image = UIImage(systemName: "house.fill")
        let homeItem = UITabBarItem(title: "Home", image: image, selectedImage: nil)
        let router = HomeRouter(
            tabBarController: tabBarController,
            item: homeItem
        )
        router.start()
        return router
    }

    private func makeSettingsRouter(in tabBarController: UITabBarController) -> Router {
        let image = UIImage(systemName: "gear")
        let homeItem = UITabBarItem(title: "Settings", image: image, selectedImage: nil)
        let router = SettingsRouter(
            tabBarController: tabBarController,
            item: homeItem
        )
        router.start()
        return router
    }
}
