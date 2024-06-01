//
//  ColorPickerView.swift
//  UikitintoSwiftui
//
//  Created by Aarsh  Patel on 21/02/24.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var image: UIImage?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack{
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Please select an image")
                    .foregroundColor(.secondary)
            }
            
            Button("Select Image") {
                showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePickers(image: $image)
        }
    }
}

#Preview {
    ColorPickerView()
}
