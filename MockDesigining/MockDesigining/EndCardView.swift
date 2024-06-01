//
//  EndCardView.swift
//  MockDesigining
//
//  Created by Aarsh  Patel on 09/02/24.
//

import SwiftUI

struct EndCardView: View {
    var body: some View {
        ZStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Celebrate Milestones Benefits")
                        .font(.title3)
                        .minimumScaleFactor(0.01)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .padding(.top, 20)
                  
                    HStack{
                        VStack(alignment: .leading){
                            Text("$1000")
                                .fontWeight(.bold)
                            Text("Hotel Voucher")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
//                        Divider().frame(height: 40)
                        VStack(alignment: .leading){ // Align content to leading edge
                                                    Rectangle()
                                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                                        .frame(width: 0.5, height: 40)
                                                        .padding(.horizontal, 10)
                                                }
                        VStack(alignment: .leading){
                            Text("$2000")
                                .fontWeight(.bold)
                            Text("Holiday Voucher")
                                .font(.subheadline)
                                .fontWeight(.light)
                        }
                        
                        .padding(.bottom,5)
                    }
                    
                }
                .padding(.leading, 5)
             
                HStack{
                    Image(systemName: "gift.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
            
        }
        .frame(width: 350, height: 150)
            .background(
                LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20)
    }
}

#Preview {
    EndCardView()
}
