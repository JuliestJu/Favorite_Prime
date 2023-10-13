//
//  CounterView.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 13.10.2023.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var state: AppState
    
    var body: some View {
        VStack {
            HStack {
                Button("-", action: {
                    self.state.count -= 1
                })
                Spacer()
                Text("\(self.state.count)")
                Spacer()
                Button("+", action: {
                    self.state.count += 1
                })
            }
            .padding([.leading, .trailing], 50)
            .font(.largeTitle)
            
            Group {
                Button("Is this prime?", action: {})
                Button("What is the \(self.ordinal(self.state.count)) prime?", action: {})
            }
            .padding(8)
            .font(.title2)
        }
        .navigationTitle("CounterView")
    }
    
    private func ordinal(_ n: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(for: n) ?? "NaN"
    }
}

#Preview {
    CounterView(state: AppState())
}
