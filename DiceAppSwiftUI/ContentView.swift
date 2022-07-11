//
//  ContentView.swift
//  DiceAppSwiftUI
//
//  Created by Sterling Miller on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    
    //State is a wrapper for SwiftUI and it says to update struct whenever the var changes.
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("diceeLogo")
                //Creates a flexable amount of space depending on screen. Handles landscape mode automagically.
                Spacer()
                HStack {
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: rightDiceNumber)
                }
                .padding(.all)
                Spacer()
                //action is closure and runs on button press
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


