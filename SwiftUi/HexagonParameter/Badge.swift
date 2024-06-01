//
//  Badge.swift
//  HexagonParameter
//
//  Created by Aarsh  Patel on 27/02/24.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<8) { i in
            RotatedBadgeSymbol(angle: Angle(degrees: (Double(i) / 8.0) * 360.0))
        }
        
            .opacity(0.5)
        
    }
    var body: some View {
        ZStack{
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1/4,anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3/4) * geometry.size.height)
            }
           
        }
    }
}

#Preview {
    Badge()
}
