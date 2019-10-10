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
            
            MyCustomButton(action: {}) {
                Text("Press me")
            }.padding()
            
            Button(action: {
                print("button pressed")
            }) {
                Text("Press me")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
