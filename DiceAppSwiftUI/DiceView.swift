//
//  DiceView.swift
//  DiceAppSwiftUI
//
//  Created by Sterling Miller on 10/7/21.
//

import SwiftUI

struct DiceView: View {
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(diceNumber: 1)
    }
}
