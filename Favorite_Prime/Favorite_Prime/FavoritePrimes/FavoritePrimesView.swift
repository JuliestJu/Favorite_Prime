//
//  FavoritePrimes.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 17.10.2023.
//

import SwiftUI

struct FavoritePrimesView: View {
    
    @StateObject var state: AppState
    
    var body: some View {
        List {
            ForEach(self.state.favoritePrimes, id: \.self) { prime in
                Text("\(prime)")
            }
            .onDelete(perform: { indexSet in
                indexSet.forEach { self.state.favoritePrimes.remove(at: $0)}
            })
        }
        .navigationBarTitle("Favorite primes")
    }
}

#Preview {
    FavoritePrimesView(state: AppState())
}
