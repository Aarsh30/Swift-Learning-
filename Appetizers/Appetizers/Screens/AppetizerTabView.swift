//
//  ContentView.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 30/01/24.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        
        TabView{
            AppetizersListView()
                .tabItem {
                    //                    Image(systemName: "house")
                    //                    Text("Home")
                    Label("Home",systemImage: "house")
                }
            AccountView()
                .tabItem {
                    //                     Image(systemName: "person")
                    //                     Text("Account")
                    Label("Account",systemImage: "person")
                }
            
            OrderView()
                .tabItem {
                    //                     Image(systemName: "bag")
                    //                     Text("Order")
                    Label("Order",systemImage: "bag")
                }
                .badge(order.items.count)
        }
        
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
