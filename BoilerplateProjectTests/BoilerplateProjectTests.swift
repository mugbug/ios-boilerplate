//
//  BoilerplateProjectTests.swift
//  BoilerplateProjectTests
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import XCTest
@testable import BoilerplateProject

class BoilerplateProjectTests: XCTestCase {

    func testExample() {
        let sum = Calculator.sum(1, with: 2)

        XCTAssertEqual(3, sum)
    }

}
