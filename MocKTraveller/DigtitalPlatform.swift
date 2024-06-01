//
//  DigtitalPlatform.swift
//  MocKTraveller
//
//  Created by Aarsh  Patel on 19/02/24.
//

import SwiftUI

struct DigtitalPlatform: View {
   
        var body: some View {
            HStack(spacing:0){
              
                Text("Lifetime Free")
                    .font(.system(size: 14))
                    .frame(width: 129,height: 41)
                    .background(Color.red)
                    .cornerRadius(8)
                Image("leftarrow")
                    .padding(.bottom)
            }
        }
}

#Preview {
    DigtitalPlatform()
}
