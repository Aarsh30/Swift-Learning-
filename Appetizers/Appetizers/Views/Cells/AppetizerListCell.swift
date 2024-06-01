//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 30/01/24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer : Appetizer
    
    var body: some View {
        HStack{
//            Image("wallpaper2")
            AppetizerRemoteImage(urlString: appetizer.imageURL)
              
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading,spacing: 5 ){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("$\(appetizer.price,specifier: "%1.f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
