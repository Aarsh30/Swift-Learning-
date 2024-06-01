//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Aarsh  Patel on 28/02/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(),id: \.self) { key in
                    CategoryRow(categoryName: key, item: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button(action: { showingProfile.toggle() }) {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Selected a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
