//
//  ContentView.swift
//  MockDesigining
//
//  Created by Aarsh  Patel on 09/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: FirstView())
                {
                    VStack{
                        Image(systemName: "person.text.rectangle.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        
                        Text("Traveller Card")
                            .padding()
                    }
                }
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
