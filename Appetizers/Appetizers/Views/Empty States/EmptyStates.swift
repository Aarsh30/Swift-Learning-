//
//  EmptyStates.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 01/02/24.
//

import SwiftUI

struct EmptyStates: View {
    let imageName:String
    let message:String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyStates(imageName: "empty-order", message:"This is our test message.\n I'm making it a litle long for testing")
}
