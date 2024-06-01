//
//  ApperizersListView.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 30/01/24.
//

import SwiftUI

struct AppetizersListView: View {
    @StateObject var  viewModel = AppetizersListViewModel()
     
    
  
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                    //    .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                    .navigationTitle("🥗 Appetizers")
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDetail)
            }
            .onAppear(){
                viewModel.getAppetiziers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if(viewModel.isShowingDetail)
            {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,isShowingDetail: $viewModel.isShowingDetail)
            }
            if viewModel.isLoading
            {
                LoadingView()
            }
            }
        .alert(item:$viewModel.alertItem){
            alertItem in
            Alert(title: alertItem.title,message: alertItem.message,dismissButton: alertItem.dismissButton)
        }
    }
    
}

#Preview {
    AppetizersListView()
}
