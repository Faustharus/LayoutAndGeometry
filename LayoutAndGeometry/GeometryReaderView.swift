//
//  GeometryReaderView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 04/08/2024.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        
        // MARK: Takes the whole screen into account to align initially by the Top-Left Corner of the screen
//        HStack {
//            Text("IMPORTANT")
//                .foregroundStyle(.white)
//                .frame(width: 200)
//                .background(.blue)
//            
//            GeometryReader { proxy in
//                Image(.energy)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: proxy.size.width * 0.8)
//                    .frame(width: proxy.size.width, height: proxy.size.height)
//            }
//        }
        
        // MARK: Will not subdivide the views correctly - HStack is not taken into account with cRF() modifier
        HStack {
            Text("IMPORTANT")
                .foregroundStyle(.white)
                .frame(width: 200)
                .background(.blue)
            
            
            Image(.energy)
                .resizable()
                .scaledToFit()
                .containerRelativeFrame(.horizontal) { size, axis in
                    size * 0.8
                }
            
        }
    }
}

#Preview {
    GeometryReaderView()
}
