//
//  ContentView.swift
//  APIFetching
//
//  Created by Aarsh  Patel on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var apiData: String = ""
    @State private var decodeApiData: String = ""
    var body: some View {
        VStack{
            ScrollView{
//                Text(apiData)
//                    .onAppear(perform: {
//                        self.callAPI()
//                    })
                Text(decodeApiData)
                    .onAppear(perform: {
                        self.DecodeApi()
                    })
            }
        }
        .padding()
    }
    func callAPI(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid URL")
            return
        }
        
        let req = URLSession.shared.dataTask(with: url){
            data , response , error in
            
            if let  data = data,
            let str = String(data: data, encoding: .utf8){
                
                DispatchQueue.main.async {
                                    self.apiData = str // Update the state variable with fetched data
                                }
                print(str)
            }
        }
        req.resume()
        
        
    }
    
    func DecodeApi()
    {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid URL")
            return
        }
        
        let req = URLSession.shared.dataTask(with: url){
            data , response , error in
            
           let decoder = JSONDecoder()
            
            if let  data = data{
                do {
                    let task = try decoder.decode([Post].self, from: data )
                    task.forEach { post in
                        print(post.title)
                        DispatchQueue.main.async {
                            self.decodeApiData = post.title // Update the state variable with fetched data
                                        }
                    }
                }catch{
                    print(error)
                }
               
            }
        }
        req.resume()
    }

}

#Preview {
    ContentView()
}
