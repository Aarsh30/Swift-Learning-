//
//  CardView.swift
//  MocKTraveller
//
//  Created by Aarsh  Patel on 19/02/24.
//

import SwiftUI

//struct CardView: View {
//    @State private var offset: CGFloat = UIScreen.main.bounds.height
//    @State private var rotationAngle: Double = 0
//
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack {
//               Image("BottomBG")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: geometry.size.width, height: geometry.size.height)
//                    .edgesIgnoringSafeArea(.all)
//                    .overlay(startOverlays)
//                
//              Spacer()
//                VStack {
//                    VStack(alignment: .leading) {
//                        Text("Get Your Smart Travel Credit Card")
//                            .fontWeight(.bold)
//                            .font(.system(size: 32))
//                        Text("In Simple 2 steps")
//                            .fontWeight(.bold)
//                            .font(.system(size: 18))
//
//                        Text("Delivery By")
//                            .font(.system(size: 12))
//                            .padding(.top)
//                        HStack {
//                            Text("Tomorrow, 24 May")
//                                .foregroundColor(Color("dateColor"))
//
//                            Text("in")
//                                .padding(.leading, -5)
//
//                            Text("560012, Bengaluru")
//                                .foregroundColor(.blue)
//                                .padding(.leading, -5)
//                            Image(systemName: "chevron.down")
//                                .foregroundColor(.blue)
//                                .padding(.leading, -5)
//                        }
//                        .font(.system(size: 12, weight: .semibold))
//                    }
//                    .padding()
//
//                    HStack {
//                        Image("TravelCard")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 265, height: 168.57)
//                            .padding(.top, 100)
//                            .shadow(radius: 1)
//                            .offset(y: offset)
//                                            .animation(.easeInOut(duration: 2)) // Animation duration and curve
//                                            .onAppear {
//                                                offset = 0 // Move the image to the top when the view appears
//                                                
//                                                
//                                            }
//                    }
//                    Spacer()
//                }
//                .padding(.top,30)
//               
//
//             
//            }
//        }
//    }
//    
//    private var startOverlays: some View {
//        Image(systemName: "TopBG")
//    }
//}
//
//
//#Preview {
//    CardView()
//}

struct CardView: View {
    @State private var offset: CGFloat = UIScreen.main.bounds.height
    @State private var isCardMovedUp = false
    @State private var rotationAngle: Double = 0
    @State private var showLifetimeFree = false
    @State private var showDigitalPlatform = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("BottomBG")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(startOverlays)

                Spacer()

                VStack {
                    VStack(alignment: .leading) {
                        Text("Get Your Smart Travel Credit Card")
                            .fontWeight(.bold)
                            .font(.system(size: 32))
                        Text("In Simple 2 steps")
                            .fontWeight(.bold)
                            .font(.system(size: 18))

                        Text("Delivery By")
                            .font(.system(size: 12))
                            .padding(.top)
                        HStack {
                            Text("Tomorrow, 24 May")
                                .foregroundColor(Color("dateColor"))

                            Text("in")
                                .padding(.leading, -5)

                            Text("560012, Bengaluru")
                                .foregroundColor(.blue)
                                .padding(.leading, -5)
                            Image(systemName: "chevron.down")
                                .foregroundColor(.blue)
                                .padding(.leading, -5)
                        }
                        .font(.system(size: 12, weight: .semibold))
                    }
                    .padding()

                    HStack {
                        Image("TravelCard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 265, height: 168.57)
                            .padding(.top, 100)
                            .shadow(radius: 1)
                            .offset(y: offset)
                            .animation(.easeInOut(duration: 1.5))
                            .onAppear {
                                offset = 0
                                isCardMovedUp = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        rotationAngle =  -2.6
                                        showLifetimeFree = true
                                    }
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        rotationAngle = 1.72
                                        showDigitalPlatform = true
                                    }
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                                    withAnimation(.easeInOut(duration: 1)) {
                                        rotationAngle = 0
                                    }
                                }
                            }
                            .rotationEffect(.degrees(rotationAngle), anchor: .center)
                            .overlay(
                                LifeTimeFreeView()
                                    .opacity(showLifetimeFree ? 1 : 0)
                                    .offset(y: -40)
                                    .padding(.top,-30)
                                    .padding(.leading,150)
                            )
                            .overlay(
                                DigitalPlatform()
                                    .opacity(showDigitalPlatform ? 1 : 0)
                                    .offset(y: 40)
                                    .padding(.top,220)
                                    .padding(.trailing,150)
                            )
                    }

                    Spacer()
                }
                .padding(.top,30)
            }
        }
    }

    private var startOverlays: some View {
        Image(systemName: "TopBG")
    }
}

//struct LifeTimeFreeView: View {
//    var body: some View {
//        HStack(spacing: 0) {
//            Image("rightarrow")
//                .padding(.top)
//            Text("Lifetime Free")
//                .font(.system(size: 14))
//                .frame(width: 129, height: 41)
//                .background(Color.white)
//                .cornerRadius(8)
//        }
//    }
//}

struct DigitalPlatform: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("100% Digital Platform")
                .font(.system(size: 14))
                .frame(width: 129, height: 41)
                .background(Color.white)
                .cornerRadius(8)
            Image("leftarrow")
                .padding(.bottom)
        }
    }
}

#Preview {
    CardView()
}
