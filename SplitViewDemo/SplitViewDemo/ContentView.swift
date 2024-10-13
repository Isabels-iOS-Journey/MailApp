//
//  ContentView.swift
//  SplitViewDemo
//
//  Created by Isabel Quijada on 06.10.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView{
            ColorSideView()
        } detail: {
            ContentUnavailableView("No Colour Selected", systemImage: "swatchpalette")
            
        }
    }
}

#Preview {
    ContentView()
}
