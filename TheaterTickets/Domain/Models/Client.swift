//
//  Client.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

class Client {
    
    private var basePrice: Float!
    
    init(basePrice: Float) {
        self.basePrice = basePrice
    }
    
    func getBasePrice() -> Float {
        return basePrice
    }
}
