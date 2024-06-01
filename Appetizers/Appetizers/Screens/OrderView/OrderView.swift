//
//  OrderView.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 30/01/24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){
                            appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    Button{
                        print("order placed")
                    } label: {
                       // APButton(title: "$\(order.totalPrice,specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice,specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom,25)
                }
                if order.items.isEmpty{
                    EmptyStates(imageName:"empty-order",
                                message:"you have no items in your order.\n please add an appetizers")
                }
            }
            
            .navigationTitle("🧾 Orders")
        }
    }}
        
        #Preview {
            
            OrderView()
        }
    
