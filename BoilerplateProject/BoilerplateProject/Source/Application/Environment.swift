//
//  Environment.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

// swiftlint:disable identifier_name
var Current = Environment()

struct Environment {
    var useSwiftUI = true
}

extension Environment {
    static var mock = Environment(
        useSwiftUI: false
    )
}
