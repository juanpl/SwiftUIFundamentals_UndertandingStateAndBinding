//
//  ContentView.swift
//  SwiftUIFundamentals_UndertandingStateAndBinding
//
//  Created by Juan Pablo Lasprilla Correa on 7/10/24.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack{
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
