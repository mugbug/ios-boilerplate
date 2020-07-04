//
//  BuilderTests.swift
//  BoilerplateProjectTests
//
//  Created by Pedro M. Zaroni on 04/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import XCTest
@testable import BoilerplateProject

class BuilderTests: XCTestCase {

    struct BuilderHelper: Builder {
        var name: String = ""
        var age: Int = 0
    }

    func testExample() throws {
        let model = BuilderHelper()
            .. \.name <- "Pedro"
            .. \.age <- 24

        XCTAssertEqual("Pedro", model.name)
        XCTAssertEqual(24, model.age)
    }
}
