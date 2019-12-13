//
//  TicketCalculator.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class TicketCalculator {
    
    var calculator: CalculatorStrategy
    
    init(calculator: CalculatorStrategy) {
        self.calculator = calculator
    }
    
    func updateStrategy(with calculator: CalculatorStrategy) {
        self.calculator = calculator
    }
    
    func priceOfTicket(in day: DaysOfWeek) -> Float {
        return self.calculator.calculate(day: day)
    }
}
