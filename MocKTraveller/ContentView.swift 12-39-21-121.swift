//
//  ContentView.swift
//  MocKTraveller
//
//  Created by Aarsh  Patel on 19/02/24.
//

import SwiftUI


struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        
        NavigationView{
            VStack {
                Button(action:
                        {
                    showingSheet = true
                })
                {
                    Text("CLICK HERE TO START")
                    Image(systemName: "arrow.right")
                    
                }
                .frame(width: 253, height: 46)
                .foregroundColor(Color.white)
                .font(Font.body.bold())
                .background(Color.btnprimary)
                .cornerRadius(4)
                .padding(.top,641)
                
                
                
                NavigationLink("", destination:  CardView(), isActive: $showingSheet)
            }
        }
        
        
    }
}



#Preview {
    ContentView()
}
