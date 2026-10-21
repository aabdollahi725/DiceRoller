//
//  ContentView.swift
//  DiceRoller
//
//  Created by Ahmadreza on 7/24/1405 AP.
//

import SwiftUI

struct ContentView: View {

    @State private var numberOfDice: Int = 1

    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(
                    .largeTitle.lowercaseSmallCaps()
                        .bold()
                )
                .foregroundStyle(.white)
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in

                    DiceView()

                }
            }
            HStack {
                Button("Remove dice",systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice==1)
                .font(.title)
                .labelStyle(.iconOnly)
                .symbolRenderingMode(.hierarchical)
                
                Button("Add dice",systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice==5)
                .font(.title)
                .labelStyle(.iconOnly)
                .symbolRenderingMode(.hierarchical)
            }.padding(.top)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .padding()
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
