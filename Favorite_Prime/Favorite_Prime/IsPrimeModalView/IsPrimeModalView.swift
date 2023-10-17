//
//  IsPrimeModalView.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 13.10.2023.
//

import SwiftUI

struct IsPrimeModalView: View {
    
    @StateObject var state: AppState
    
    var body: some View {
        if self.isPrime(self.state.count) {
            Text("\(self.state.count) is prime 🎉")
                .font(.title)
            
            if self.state.favoritePrimes.contains(self.state.count) {
              Button(action: {
                self.state.favoritePrimes.removeAll(where: { $0 == self.state.count })
              }) {
                Text("Remove from favorite primes")
              }
              .padding()
            } else {
              Button(action: {
                self.state.favoritePrimes.append(self.state.count)
              }) {
                Text("Save to favorite primes")
              }
              .padding()
            }
           

        } else {
            Text("\(self.state.count) is not prime :(")
                .font(.title)
        }
    }
    
    private func isPrime(_ p: Int) -> Bool {
        if p <= 1 {  return false }
        if p <= 3 { return true }
        for i in 2...(Int(sqrtf(Float(p)))) {
            if p % i == 0 { return false }
        }
        return true
    }
}

#Preview {
    IsPrimeModalView(state: AppState())
}
