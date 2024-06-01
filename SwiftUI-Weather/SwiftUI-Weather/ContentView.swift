//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Aarsh  Patel on 29/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
         
            BackgroundView(isNight: isNight)
            VStack
            {
                CityTextView(cityName: "Bangalore")
                
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 25: 76)
                
                HStack(spacing:20){
                    WeatherDayView(
                            dayofweek: "Tue",
                            imageName: "cloud.sun.fill",
                            temperature: 74)
                    WeatherDayView(
                            dayofweek: "Wed",
                            imageName: "sun.max.fill",
                            temperature: 88)
                    WeatherDayView(
                            dayofweek: "Thu",
                            imageName: "wind.snow",
                            temperature: 55)
                    WeatherDayView(
                            dayofweek: "Fri",
                            imageName: "sunset.fill",
                            temperature: 60)
                    WeatherDayView(
                            dayofweek: "Sat",
                            imageName: "snow",
                            temperature: 25)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayofweek: String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(dayofweek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
               // .renderingMode(.original)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
//    var topColor:Color
//    var bottomColor:Color
    
   var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint:.topLeading,
                       endPoint: .bottomTrailing)
        
       // .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) this is depricated
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName:String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct  MainWeatherStatusView: View {
    
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundStyle(.white)
            
        }
        .padding(.bottom,40)
    }
}


