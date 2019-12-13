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
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .tuesday), 4.68)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .wednesday), 3.85)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .thursday), children.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .friday), 4.89)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .saturday), children.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .sunday), children.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .holiday), children.getBasePrice())
    }
    
    func testShouldCalculateSeniorTicket() {
        let senior = Senior()
        let calculator = SeniorCalculator(client: senior)
        let ticketCalculator = TicketCalculator(calculator: calculator)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .monday), 5.40)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .tuesday), 5.10)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .wednesday), 3.60)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .thursday), 4.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .friday), senior.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .saturday), 5.70)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .sunday), 5.70)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .holiday), 5.70)
    }
    
    func testShouldCalculateStudentWithCardTicket() {
        let student = Student(hasStudentCard: true)
        let calculator = StudentCalculator(client: student)
        let ticketCalculator = TicketCalculator(calculator: calculator)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .monday), 5.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .tuesday), 5.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .wednesday), 5.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .thursday),5.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .friday), 5.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .saturday), student.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .sunday), student.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .holiday), 5.20)
    }
    
    func testShouldCalculateStudentWithoutCardTicket() {
        let student = Student(hasStudentCard: false)
        let calculator = StudentCalculator(client: student)
        let ticketCalculator = TicketCalculator(calculator: calculator)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .monday), 7.20)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .tuesday), 7.60)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .wednesday), 4.00)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .thursday), 5.60)
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .friday), student.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .saturday), student.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .sunday), student.getBasePrice())
        XCTAssertEqual(ticketCalculator.priceOfTicket(in: .holiday), student.getBasePrice())
    }
}
