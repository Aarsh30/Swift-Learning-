//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 31/01/24.
//

import SwiftUI

final class AppetizersListViewModel: ObservableObject
{
    @Published  var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published  var selectedAppetizer: Appetizer?
    
    func getAppetiziers(){
        isLoading = true
        NetworkManager.shared.getAppetizers {
           [self] result in
            DispatchQueue.main.async {
                isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error{
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                    
                }
            }
            
        }
    }
}
