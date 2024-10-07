//
//  SwiftUIFundamentals_UndertandingStateAndBindingApp.swift
//  SwiftUIFundamentals_UndertandingStateAndBinding
//
//  Created by Juan Pablo Lasprilla Correa on 7/10/24.
//

import SwiftUI

@main
struct SwiftUIFundamentals_UndertandingStateAndBindingApp: App {
    
    @StateObject private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .environmentObject(AppState())
            }
        }
    }
}
