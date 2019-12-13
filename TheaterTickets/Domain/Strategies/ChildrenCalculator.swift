//
//  ChildrenCalculator.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class ChildrenCalculator: CalculatorStrategy {
    override func calculate(day: DaysOfWeek) -> Float {
        switch day {
            case .monday:
                return self.getDiscount(with: 10.0)
            case .tuesday:
                return self.getDiscount(with: 15.0)
            case .wednesday:
                return self.getDiscount(with: 30.0)
            case .friday:
                return self.getDiscount(with: 11)
            case .saturday, .sunday, .thursday, .holiday:
                return self.client.getBasePrice()
        }
    }
}
