//
//  ContentView.swift
//  SwiftUI - Dice Guy
//
//  Created by Angela on 27/05/20.
//  Copyright © 2020 Angela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceV(n: 2)
                    DiceV(n: 1)
                }
                 .padding(.horizontal)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
