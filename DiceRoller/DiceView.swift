//
//  DiceView.swift
//  DiceRoller
//
//  Created by Ahmadreza on 7/24/1405 AP.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips:Int=1
    var body: some View {
        
            Button {
                withAnimation{
                    numberOfPips=Int.random(in: 1...6)
                }
            }label:{
                Image(systemName: "die.face.\(numberOfPips).fill")
                    .resizable()
                    .frame(maxWidth: 100,maxHeight: 100)
                    .aspectRatio(1,contentMode: .fit)
                    .foregroundStyle(.black,.white)
            }.buttonStyle(.plain)
                .buttonBorderShape(.roundedRectangle)
        }
    }

#Preview {
    DiceView()
}
