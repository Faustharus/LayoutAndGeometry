//
//  PositionningView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 03/08/2024.
//

import SwiftUI

struct PositionningView: View {
    var body: some View {
        // MARK: Position - Absolute Positioning
//        VStack {
//            HStack {
//                Text("Hello there!")
//                    .position(x: 100, y: 100)
//                    .background(Color.red)
//                
//                Text("General Kenobi ..!")
//                    .position(x: 100, y: 100)
//                    .background(Color.green)
//                    
//            }
//            
//            Text("In the name of the Galactic Senate of the Republic !")
//                .position(x: 200, y: 100)
//                .background(Color.blue)
//        }
        
        // MARK: Offset - Relative Positioning
        VStack {
            HStack {
                Text("Hello there!")
                    .background(Color.red)
                    .offset(x: 100, y: 100)
                
                Text("General Kenobi ..!")
                    .offset(x: 100, y: 100)
                    .background(Color.green)
            }
            
            Text("In the name of the Galactic Senate of the Republic !")
                .offset(x: 200, y: 100)
                .background(Color.blue)
        }
    }
}

#Preview {
    PositionningView()
}
