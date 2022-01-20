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
    @State private var isFirstEdit = false
    var body: some View {
        NavigationView {
            VStack {
                List(diceRolls) {
                    Text("\($0.TotalAmountDice)")
                }
                
                
                // MARK: - Buttons

                HStack {
                    Button(role: .cancel) {
                        startRollingDices()
                    } label: {
                        Text("Roll dices")
                        Image(systemName: "dice.fill")
                    }
                    .disabled(isFirstEdit ? false : true)
                    
                    
                    
                    Button(role: .cancel) {
                        isFirstEdit.toggle()
                        showingDetailView.toggle()
                    } label: {
                        Text("Change dices")
                        Image(systemName: "pencil")
                    }
                }
                
            }
            .sheet(isPresented: $showingDetailView, content: {
                DiceDetailView()
            })
            .navigationTitle("Dice rolls")
        }
        
    }
    
    func startRollingDices() {
        let randomDice = Int.random(in: 1...50)
        let dice = Dice(totalAmountDice: randomDice, diceAmount: 1, faceAmount: 1)
        diceRolls.append(dice)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
