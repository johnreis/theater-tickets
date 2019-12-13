//
//  CalculatorStrategy.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class CalculatorStrategy {
    
    let client: Client!
    
    init(client: Client) {
        self.client = client
    }
    
    func calculate(day: DaysOfWeek) -> Float {
        return 0
    }
    
    func getDiscount(with percentage: Float) -> Float {
        let basePrice = self.client.getBasePrice()
        return basePrice - ((basePrice / 100) * percentage)
    }
}
