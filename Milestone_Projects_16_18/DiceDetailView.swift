//
//  DiceDetailView.swift
//  Milestone_Projects_16_18
//
//  Created by Giovanni Gaffé on 2022/1/20.
//

import SwiftUI

struct DiceDetailView: View {
    @Environment(\.dismiss) var dismiss
    var dicesAmount = ["1", "2", "3", "4"]
    var facesAmount = ["4", "6", "8", "10", "12", "20", "100"]
    
    @State private var diceAmount = "2"
    @State private var faceAmount = "6"
    
    var body: some View {
        Form {
            Section {
            Picker("How many dices", selection: $diceAmount) {
                ForEach(dicesAmount, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            Text("Tu as choisis : \(diceAmount) dées")
                
            } header: {
                Text("Fais ta selection")
            }
            
            Section {
                Picker("How many faces", selection: $faceAmount) {
                    ForEach(facesAmount, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                Text("Tu as choisis : \(faceAmount) faces")
            }
            
            Button("Start rolling") {
                
                dismiss()
            }
        }
        .navigationTitle("Prépare ton lancer de dée")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DiceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DiceDetailView()
        }
    }
}
