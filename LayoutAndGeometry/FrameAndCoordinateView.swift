//
//  FrameAndCoordinateView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 04/08/2024.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            
            InnerView()
                .background(.green)
            
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            GeometryReader { proxy in
                Text("Left")
                    .frame(height: proxy.size.height)
                    .onTapGesture {
                        print("Global Center: \(proxy.frame(in: .global).midX) x \(proxy.frame(in: .global).midY)")
                        print("Custom Center: \(proxy.frame(in: .named("Custom")).midX) x \(proxy.frame(in: .named("Custom")).midY)")
                        print("Local Center: \(proxy.frame(in: .local).midX) x \(proxy.frame(in: .local).midY)")
                    }
            }
            .frame(width: 30)
            
            GeometryReader { proxy in
                Text("Center")
                    .frame(width: proxy.size.width)
                    .background(.blue)
                    .onTapGesture {
                        print("Global Center: \(proxy.frame(in: .global).midX) x \(proxy.frame(in: .global).midY)")
                        print("Custom Center: \(proxy.frame(in: .named("Custom")).midX) x \(proxy.frame(in: .named("Custom")).midY)")
                        print("Local Center: \(proxy.frame(in: .local).midX) x \(proxy.frame(in: .local).midY)")
                    }
            }
            .background(.yellow)
            
            Text("Right")
        }
    }
}

struct FrameAndCoordinateView: View {
    var body: some View {
        OuterView()
            .background(.red)
            .coordinateSpace(.named("Custom"))
    }
}

#Preview {
    FrameAndCoordinateView()
}
