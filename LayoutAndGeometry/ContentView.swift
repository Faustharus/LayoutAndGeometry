//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 01/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0 ..< 10) { position in
                Text("Position \(position)")
                    .padding(.horizontal, 10)
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 300, height: 300)
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
