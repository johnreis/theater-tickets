//
//  Student.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class Student: Client {
    
    private var hasStudentCard: Bool
    
    init(hasStudentCard: Bool) {
        self.hasStudentCard = hasStudentCard
        super.init(basePrice: 8.00)
    }
    
    func hasCard() -> Bool {
        return self.hasStudentCard
    }
}
