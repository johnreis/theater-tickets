//
//  FloatExtensions.swift
//  TheaterTickets
//
//  Created by John Lenon Reis on 12/12/19.
//  Copyright © 2019 John Lenon Reis. All rights reserved.
//

extension Float {
    func withTwoDecimals() -> Float {
        return Float(String(format: "%.2f", self))!
    }
}
