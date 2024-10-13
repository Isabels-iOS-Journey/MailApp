//
//  ColorDetailedView.swift
//  SplitViewDemo
//
//  Created by Isabel Quijada on 06.10.24.
//

import Foundation
import SwiftUI

struct ColorDetailedView: View {
    let colorModel: ColorModel
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(colorModel.color)
                .frame(width: 100, height: 100)
            Text(colorModel.name)
                .font(.title2)
                .bold()
        }
        .navigationTitle(colorModel.name)
    }
}

#Preview {
    ColorDetailedView(colorModel: .init(name: "Blue", color: .blue))
}
