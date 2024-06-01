//
//  Combine.swift
//  UikitintoSwiftui
//
//  Created by Aarsh  Patel on 21/02/24.
//

import Foundation
import UIKit
import SwiftUI


struct UILabelView: UIViewRepresentable {
    let text: String
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.text = text
        return label
    }
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}
