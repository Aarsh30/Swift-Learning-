//
//  ButtonAction.swift
//  UikitintoSwiftui
//
//  Created by Aarsh  Patel on 22/02/24.
//

import Foundation
import SwiftUI
import UIKit

struct UIKitButton: UIViewRepresentable {
    typealias UIViewType = UIButton

    var title: String
    var action: () -> Void

    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.addTarget(context.coordinator, action: #selector(Coordinator.buttonAction), for: .touchUpInside)
        return button
    }

    func updateUIView(_ uiView: UIButton, context: Context) {
        // Update button properties here if needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(action: action)
    }

    class Coordinator: NSObject {
        var action: () -> Void

        init(action: @escaping () -> Void) {
            self.action = action
        }

        @objc func buttonAction() {
            action()
        }
    }
}
