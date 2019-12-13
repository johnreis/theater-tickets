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
    var ticketCalculator: TicketCalculator
    
    func setUp() {
        self.ticketCalculator = TicketCalculator()
    }
    
    func testShouldCalculateChildrenTicket() {
        let children = Children()
        self.ticketCalculator.updateStrategy(with: ChildrenCalculator(client: children))
        
        let price = self.priceOfTicket(in .monday)
        XCTAssertEqual(price, 5.4)
        
    }
}
