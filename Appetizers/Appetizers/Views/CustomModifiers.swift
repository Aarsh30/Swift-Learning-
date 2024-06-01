//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 01/02/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
extension View {
    func standardButtonStyle() -> some View{
        self.modifier(StandardButtonStyle())
        
    }
}
