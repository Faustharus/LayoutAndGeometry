//
//  ScrollViewEffectHelix.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 05/08/2024.
//

import SwiftUI

struct ScrollViewEffectHelix: View {
    
    let colors: [Color] = [.red, .blue, .green, .yellow, .purple, .pink, .orange]
    
    var body: some View {
        // MARK: Complex Helix Revamp - Exercice
        GeometryReader { fullView in
            ScrollView {
                ForEach(0 ..< 60) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: min(1,proxy.frame(in: .global).minY / fullView.size.height), saturation: 1, brightness: 1))
                            .rotation3DEffect(
                                .degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 4.5,
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                            .opacity(proxy.frame(in: .global).minY / 200)
                            .scaleEffect(max(0.5, proxy.frame(in: .global).minY / 400))
                    }
                    .frame(height: 40)
                }
            }
        }
        
        // MARK: Complex Helix
//        GeometryReader { fullView in
//            ScrollView {
//                ForEach(0 ..< 60) { index in
//                    GeometryReader { proxy in
//                        Text("Row #\(index)")
//                            .font(.title)
//                            .frame(maxWidth: .infinity)
//                            .background(colors[index % colors.count])
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
//        ScrollView {
//            ForEach(0 ..< 60) { index in
//                GeometryReader { proxy in
//                    Text("Row #\(index)")
//                        .font(.title)
//                        .frame(maxWidth: .infinity)
//                        .background(colors[index % colors.count])
//                        .rotation3DEffect(
//                            .degrees(proxy.frame(in: .global).minY / 7),
//                            axis: (x: 0.0, y: 1.0, z: 0.0)
//                        )
//                }
//                .frame(height: 40)
//            }
//        }
    }
}

#Preview {
    ScrollViewEffectHelix()
}
