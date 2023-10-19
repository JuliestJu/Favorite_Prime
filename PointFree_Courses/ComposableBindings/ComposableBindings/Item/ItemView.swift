//
//  ItemView.swift
//  ComposableBindings
//
//  Created by Юлія Воротченко on 19.10.2023.
//

import SwiftUI

struct ItemView: View {
    @Binding var item: ItemModel
    
    
    var body: some View {
        Form {
            TextField("Name", text: self.$item.name)
            Picker(selection: self.$item.color) {
                
            } label: {
                Text("Color")
            }
        }
        .navigationTitle(Text("Add item"))
    }
}

#Preview {
    @State var item = ItemModel(name: "Name", color: .blue)
    return ItemView(item: $item)
}
