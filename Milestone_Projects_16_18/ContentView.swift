//
//  ContentView.swift
//  Milestone_Projects_16_18
//
//  Created by Giovanni Gaffé on 2022/1/20.
//

import SwiftUI

struct ContentView: View {
    @State private var diceRolls = [Dice]()
    @State private var showingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(diceRolls) {
                    Text("\($0.number)")
                }
                
                
                Button("Roll dice") {
                    let randomDice = Int.random(in: 1...50)
                    let dice = Dice(number: randomDice, diceAmount: 1, faceAmount: 1)
                    diceRolls.append(dice)
                }
            }
            .navigationTitle("Dice rolls")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
