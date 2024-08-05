//
//  ScrollViewEffectHelix.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 05/08/2024.
//

import SwiftUI

struct ScrollViewEffectHelix: View {
    
    let colors: [Color] = [.red, .blue, .green, .yellow, .purple, .cyan, .orange, .mint, .indigo, .teal]
    
    var body: some View {
        // MARK: Complex Helix
//        GeometryReader { fullView in
//            ScrollView {
//                ForEach(0 ..< 60) { index in
//                    GeometryReader { proxy in
//                        Text("Row #\(index)")
//                            .font(.title)
//                            .frame(maxWidth: .infinity)
//                            .background(colors[index % 10])
//                            .rotation3DEffect(
//                                .degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 7,
//                                axis: (x: 0.0, y: 1.0, z: 0.0)
//                            )
//                    }
//                    .frame(height: 40)
//                }
//            }
//        }
        
        // MARK: Simple Helix
        ScrollView {
            ForEach(0 ..< 60) { index in
                GeometryReader { proxy in
                    Text("Row #\(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .background(colors[index % 10])
                        .rotation3DEffect(
                            .degrees(proxy.frame(in: .global).minY / 7),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                }
                .frame(height: 40)
            }
        }
    }
}

#Preview {
    ScrollViewEffectHelix()
}
