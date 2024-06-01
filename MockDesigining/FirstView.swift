//
//  FirstView.swift
//  MockDesigining
//
//  Created by Aarsh  Patel on 09/02/24.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                
                LazyVStack{
                    HStack{
                        Image("traveller")
                            .resizable()
                            .frame(width: 350, height: 700)
                            .cornerRadius(20)
                    }
                    Spacer()
                    HStack{
                        Image("travellerfull")
                            .resizable()
                            .frame(width: 350, height: 250)
                            .cornerRadius(20)
                    }
                    Spacer()
                    ZStack{
                        VStack{
                            Text("Rewards")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.purple)
                            Text("That Never Run Out")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                            
                            Text("Earn on every swipe, every bite, every step gets you closer to vacation bliss.")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            HStack(spacing: 10){
                                VStack(alignment: .leading){
                                    Text("10%")
                                        .fontWeight(.bold)
                                    Text("on hotel,")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                    Text("stays, holidays")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                }
                                .frame(width: 100, height: 80)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(20)
                                .padding(.trailing, 10)
                                
                                VStack(alignment: .leading){
                                    Text("6%")
                                        .fontWeight(.bold)
                                    Text("on airport,")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                    Text("flight")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                }
                                .frame(width: 100, height: 80)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    Text("1%")
                                        .fontWeight(.bold)
                                    Text("on all other,")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                    Text("spends")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                }
                                .frame(width: 100, height: 80)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(20)
                                
                            }
                            Text("Points Aren't A Puzzle")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .padding(.top,40)
                            
                            Text("1 Reward Point = 1 INR")
                                .frame(width: 300, height: 100)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(20)
                              
                            Text("No Expiry | No Restrictions | No Capping")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .padding(.top,5)
                            
                        }
                        
                        
                    }
                    .frame(width: 350, height: 500)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    
                    Spacer()
                    EndCardView()
                    
                }
                
            }
        } .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FirstView()
}
