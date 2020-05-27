//
//  ContentView.swift
//  SwiftUI - Dice Guy
//
//  Created by Angela on 27/05/20.
//  Copyright © 2020 Angela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDice = 1
   @State var rightDice = 1
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceV(n: leftDice)
                    DiceV(n: rightDice)
                }
                 .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDice = Int.random(in: 1...6)
                    self.rightDice = Int.random(in: 1...6)
                    
                    
                }) {
                    Text("Keep Rollin'")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                    
                    
                    
                }
               
            }
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceV: View {
    
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
        .padding()
            .aspectRatio(1, contentMode: .fit)
    }
}
