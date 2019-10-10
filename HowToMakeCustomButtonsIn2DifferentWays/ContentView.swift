//
//  ContentView.swift
//  HowToMakeCustomButtonsIn2DifferentWays
//
//  Created by ramil on 10.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MyCustomButton(action: {
                print("You win")
            }) {
                Text("Press me")
            }.padding()
            
            Button(action: {
                print("button pressed")
            }) {
                Text("Press me")
            }.buttonStyle(PrimaryButtonStyle())
        }
        
    }
}


struct PrimaryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(Color.blue))
            .foregroundColor(.white)
            .opacity(configuration.isPressed ? 0.4 : 1)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
