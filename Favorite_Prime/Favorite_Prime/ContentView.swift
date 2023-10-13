//
//  ContentView.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 13.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var state: AppState
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    CounterView(state: self.state)
                } label: {
                    Text("Counter Demo")
                }
                NavigationLink {
                    EmptyView()
                } label: {
                    Text("Favorite Primes")
                }
            }
            .navigationTitle("State Management")
        }
    }
}

#Preview {
    ContentView(state: AppState())
}
