//
//  ColorCell.swift
//  SplitViewDemo
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

struct ColorCell: View {
    let colorModel: ColorModel
    
    var body: some View {
        HStack{
            Circle()
                .fill(colorModel.color)
                .frame(width: 10, height: 10)
            
            Text(colorModel.name)
            Spacer()
        }
    }
}

#Preview {
    List {
        ColorCell(colorModel: .init(name: "Red", color: .red))
    }
}
