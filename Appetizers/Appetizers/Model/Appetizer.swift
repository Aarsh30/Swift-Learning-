//
//  Appetizer.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 30/01/24.
//

import Foundation
struct Appetizer : Decodable,Identifiable{
    let id : Int
    let name : String
    let description : String
    let price : Double
    let imageURL : String
    let calories : Int
    let protein : Int
    let carbs : Int
}

struct AppetizerResponse: Decodable {
    let request : [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizers",
                                           description: "this is a description, where much of the content would be comming in it",
                                           price: 34,
                                           imageURL: "",
                                           calories: 23,
                                           protein: 23,
                                           carbs: 12)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test Appetizers one ",
                                           description: "this is a description, where much of the content would be comming in it",
                                           price: 34,
                                           imageURL: "",
                                           calories: 23,
                                           protein: 23,
                                           carbs: 12)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Test Appetizers two",
                                           description: "this is a description, where much of the content would be comming in it",
                                           price: 34,
                                           imageURL: "",
                                           calories: 23,
                                           protein: 23,
                                           carbs: 12)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Test Appetizers three",
                                           description: "this is a description, where much of the content would be comming in it",
                                           price: 34,
                                           imageURL: "",
                                           calories: 23,
                                           protein: 23,
                                           carbs: 12)
    
    static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]
}
