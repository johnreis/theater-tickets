//
//  FloatExtensionTest.swift
//  TheaterTicketsTests
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

import XCTest
@testable import TheaterTickets

class FloatExtensionTest: XCTestCase {
    
    func testShouldConvertFloatToTwoDecimals() {
        XCTAssertEqual(Float(10.123).withTwoDecimals(), 10.12)
        XCTAssertEqual(Float(10.1).withTwoDecimals(), 10.10)
    }
}
