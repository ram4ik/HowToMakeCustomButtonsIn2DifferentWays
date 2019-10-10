//
//  MyCustomButton.swift
//  HowToMakeCustomButtonsIn2DifferentWays
//
//  Created by ramil on 10.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MyCustomButton<WhateverYouWant: View>: View {
    
    let action: () -> Void
    let content: WhateverYouWant
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> WhateverYouWant) {
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button(action: action) {
            content
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Capsule().fill(Color.blue))
                .foregroundColor(.white)
        }
    }
}
