//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Aarsh  Patel on 29/01/24.
//

import Foundation

final class FrameworkGridViewModel:ObservableObject
{
    var selectedFramework : Framework?
    {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
