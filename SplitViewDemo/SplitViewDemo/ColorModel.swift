//
//  ColorModel.swift
//  SplitViewDemo
//
//  Created by Isabel Quijada on 06.10.24.
//

import Foundation
import SwiftUI

struct ColorModel: Identifiable {
    var id: String{ name }
    let name: String
    let color: Color

}

extension ColorModel {
    static var all: [ColorModel] {
        [
            .init(name: "Red", color: .red),
            .init(name: "Orange", color: .orange),
            .init(name: "Yellow", color: .yellow),
            .init(name: "Green", color: .green),
            .init(name: "Blue", color: .blue),
            .init(name: "Purple", color: .purple),
            .init(name: "Pink", color: .pink),
            .init(name: "Gray", color: .gray),
            .init(name: "White", color: .white),
            .init(name: "Blue", color: .blue),
            .init(name: "Black", color: .black)
            ]
            }
}
