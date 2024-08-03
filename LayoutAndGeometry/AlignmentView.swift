//
//  AlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Damien Chailloleau on 02/08/2024.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

extension HorizontalAlignment {
    enum MidAccount: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    
    static let midAccount = HorizontalAlignment(MidAccount.self)
}

struct AlignmentView: View {
    var body: some View {
        Color.red
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@twostraws")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                Image(.energy)
                    .resizable()
                    .frame(width: 64, height: 64)
                    .clipShape(.buttonBorder)
            }
            .background(.blue)
            
            VStack(alignment: .midAccount) {
                VStack(alignment: .midAccount) {
                    Text("Full Name:")
                    Text("Haul Pudson")
                        .font(.largeTitle)
                }
                .alignmentGuide(.midAccount) { d in
                    d[HorizontalAlignment.trailing]
                }
                .background(.green)
                
                VStack {
                    Text("Number of Followers:")
                        .alignmentGuide(.midAccountAndName) { d in
                            d[VerticalAlignment.center]
                        }
                    Text("10K")
                        .font(.headline)
                }
                .background(.purple)
            }
            .background(.yellow)
            
        }
    }
}

#Preview {
    AlignmentView()
}
