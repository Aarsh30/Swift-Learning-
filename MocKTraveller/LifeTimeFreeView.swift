//
//  LifeTimeFreeView.swift
//  MocKTraveller
//
//  Created by Aarsh  Patel on 19/02/24.
//

import SwiftUI

struct LifeTimeFreeView: View {
    var body: some View {
        HStack(spacing:0){
            Image("rightarrow")
                .padding(.top)
            Text("Lifetime Free")
                .font(.system(size: 14))
                .frame(width: 129,height: 41)
                .background(Color.white)
                .cornerRadius(8)
        }
    }
}

#Preview {
    LifeTimeFreeView()
}
