//
//  TheaterTicketsTests.swift
//  TheaterTicketsTests
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

import XCTest
@testable import TheaterTickets

class TheaterTicketsTests: XCTestCase {
    func testShouldCalculateChildrenTicket() {
        let children = Children()
        let calculator = ChildrenCalculator(client: children)
        let ticketCalculator = TicketCalculator(calculator: calculator)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .monday), 4.95)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .tuesday), 4.675)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .wednesday), 3.85)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .thursday), children.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .friday), 4.895)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .saturday), children.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .sunday), children.getBasePrice())
    }
}
