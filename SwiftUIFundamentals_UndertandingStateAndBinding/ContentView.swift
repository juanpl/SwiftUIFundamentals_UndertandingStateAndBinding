//
//  ContentView.swift
//  SwiftUIFundamentals_UndertandingStateAndBinding
//
//  Created by Juan Pablo Lasprilla Correa on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello world!")
            Text("\(count)")
                .font(.largeTitle)
            Button("Increment"){
                count += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
