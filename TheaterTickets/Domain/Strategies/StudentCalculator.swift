//
//  StudentCalculator.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class StudentCalculator: CalculatorStrategy {
    
    init(client: Student) {
        super.init(client: client)
    }
    
    override func calculate(day: DaysOfWeek) -> Float {
        
        let student = self.client as! Student
        let daysWithoutCardDiscount: [DaysOfWeek] = [ .saturday, .sunday ]
        
        if student.hasCard() && !daysWithoutCardDiscount.contains(day) {
            return self.getDiscount(with: 35.0)
        }
        
        switch day {
        case .monday:
            return self.getDiscount(with: 10.0)
        case .tuesday:
            return self.getDiscount(with: 5.0)
        case .wednesday:
            return self.getDiscount(with: 50.0)
        case .thursday:
            return self.getDiscount(with: 30.0)
        case .friday, .saturday, .sunday, .holiday:
            return student.getBasePrice()
        }
    }
}
