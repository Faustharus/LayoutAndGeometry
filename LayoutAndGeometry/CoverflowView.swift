//
//  CoverflowView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 05/08/2024.
//

import SwiftUI

struct CoverflowView: View {
    var body: some View {
        // MARK: Coverflow Effect with GeometryReader
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 0) {
//                ForEach(1 ..< 20) { number in
//                    GeometryReader { proxy in
//                        Text("Number \(number)")
//                            .font(.title)
//                            .padding()
//                            .background(.red)
//                            .rotation3DEffect(
//                                .degrees(-proxy.frame(in: .global).minX / 8),
//                                axis: (x: 0, y: 1, z: 0)
//                            )
//                            .frame(width: 200, height: 200)
//                    }
//                    .frame(width: 200, height: 200)
//                }
//            }
//        }
        
        // MARK: Coverflow Effect with .visualEffect() modifier
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1 ..< 20) { number in
                    Text("Number \(number)")
                        .font(.title)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX / 8), axis: (x: 0.0, y: 1.0, z: 0.0))
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    CoverflowView()
}
