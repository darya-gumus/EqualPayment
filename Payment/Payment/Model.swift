//
//  Model.swift
//  Payment
//
//  Created by Darya Yuryeva on 27.03.21.
//

import Foundation

var totalAmount: Double = 0
var tip: Double = 0
var peopleNum: Int = 0
var amountForEach: Double = 0

func countSumForEachPerson(totalAmount: Double, tip: Double, people: Int) -> Double {
   amountForEach = (totalAmount + (totalAmount * tip)) / Double(peopleNum)
    return amountForEach
}
