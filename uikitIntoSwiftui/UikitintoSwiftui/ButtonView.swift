//
//  ButtonView.swift
//  UikitintoSwiftui
//
//  Created by Aarsh  Patel on 22/02/24.
//

import SwiftUI

struct ButtonView: View {
    @State private var textToPass: String = "hii"

    var body: some View {
        NavigationView {
            VStack {
                Text("Text to pass: \(textToPass)")

                UIKitButton(title: "Pass Text") {
                    self.textToPass = "Hello, UIKit"
                    // Navigate to the destination view here
                }

                NavigationLink(destination: DestinationView(), isActive: .constant(false)) {
                    EmptyView()
                }
            }
        }
    }
}
#Preview {
    ButtonView()
}
