//
//  ItemModel.swift
//  ComposableBindings
//
//  Created by Юлія Воротченко on 19.10.2023.
//

import Foundation

struct ItemModel {
    var name: String
    var color: Color
    
    enum Color {
        case blue
        case green
        case black
        case red
        case yellow
        case white
    }
}
