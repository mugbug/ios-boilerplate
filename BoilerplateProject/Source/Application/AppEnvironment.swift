//
//  AppEnvironment.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

var Current = AppEnvironment()

struct AppEnvironment {
    var useSwiftUI = true
}

extension AppEnvironment {
    static var mock = AppEnvironment(
        useSwiftUI: false
    )
}
