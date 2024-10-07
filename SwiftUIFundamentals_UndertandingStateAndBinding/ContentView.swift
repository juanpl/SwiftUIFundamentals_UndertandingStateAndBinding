//
//  ContentView.swift
//  SwiftUIFundamentals_UndertandingStateAndBinding
//
//  Created by Juan Pablo Lasprilla Correa on 7/10/24.
//

import SwiftUI

struct ContentView: View {

    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text(isOn ? "ON": "OFF")
                    .foregroundStyle(.white)
            }.fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .green : .red )
    }
}

#Preview {
    ContentView()
}
