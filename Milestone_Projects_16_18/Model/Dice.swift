//
//  File.swift
//  Milestone_Projects_16_18
//
//  Created by Giovanni Gaffé on 2022/1/20.
//

import Foundation

struct Dice: Identifiable {
    let id = UUID()
    let totalAmountDice: Int
    let diceAmount: Int
    let faceAmount: Int

    static let example = Dice(TotalAmountDice: 10, diceAmount: 2, faceAmount: 5)
}
