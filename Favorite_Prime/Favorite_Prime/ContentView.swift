//
//  ContentView.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 13.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    EmptyView()
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
    ContentView()
}
