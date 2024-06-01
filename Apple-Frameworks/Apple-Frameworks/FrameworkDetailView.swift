//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Aarsh  Patel on 29/01/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework:Framework
    @Binding var isShowingDetailView:Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
            Button
            {
               isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
       
                
                
            }
        }
            .padding()
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                    AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(false))
}
