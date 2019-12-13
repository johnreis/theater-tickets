//
//  SeniorCalculator.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class SeniorCalculator: CalculatorStrategy {
    
    init(client: Senior) {
        super.init(client: client)
    }
    
    override func calculate(day: DaysOfWeek) -> Float {
        switch day {
        case .monday:
            return self.getDiscount(with: 10)
        case .tuesday:
            return self.getDiscount(with: 15)
        case .wednesday:
            return self.getDiscount(with: 40)
        case .thursday:
            return self.getDiscount(with: 30)
        case .friday:
            return self.client.getBasePrice()
        case .saturday, .sunday, .holiday:
            return self.getDiscount(with: 5)
        }
    }
}
