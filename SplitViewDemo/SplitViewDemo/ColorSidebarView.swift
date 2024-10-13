//
//  ColorSideView.swift
//  SplitViewDemo
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

struct ColorSideView: View {
    var body: some View {
        List(ColorModel.all) { color in
            
            NavigationLink {
                ColorDetailedView(colorModel: color)
            } label: {
                ColorCell(colorModel: color)
                
            }
        }
        .navigationTitle("Colours")
    }
}

#Preview {
    NavigationStack {
        ColorSideView()
    }
}
