//
//  ContentView.swift
//  SwiftUIFundamentals_UndertandingStateAndBinding
//
//  Created by Juan Pablo Lasprilla Correa on 7/10/24.
//

import SwiftUI

struct ContentView: View {

    @State private var friends: [String] = ["Juan", "Pedro", "Pablo", "Raul", "Bob"]
    @State private var search: String = ""
    @State private var filterFriends: [String] = []
    
    var body: some View {
        VStack{
            List(filterFriends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filterFriends = friends
                } else {
                    filterFriends = friends.filter {$0.contains(search)}
                }

            }
            
            Spacer()
        }.padding()
        .onAppear(perform: {
            filterFriends = friends
        })
        .navigationBarTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
