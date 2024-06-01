//
//  Alert.swift
//  Appetizers
//
//  Created by Aarsh  Patel on 31/01/24.
//

import SwiftUI

struct AlertItem : Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
    struct AlertContext
    {   //networks alerts
        static let invalidData  = AlertItem(title: Text("Server Error"),
                                            message: Text("The data recived from the server was invalid, Please contact the support"),
                                            dismissButton: .default(Text("OK")))
        
        static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("The Response from the server was invalid, Please contact the support"),
                                            dismissButton: .default(Text("OK")))
        
        static let invalidURL  = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issuse connecting with the server, Please contact the support"),
                                            dismissButton: .default(Text("OK")))
        
        static let unableToComplete  = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time, Please contact the support"),
                                            dismissButton: .default(Text("OK")))
        //Accounts alerts
        
        static let invalidForm = AlertItem(title: Text("invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out"),
                                            dismissButton: .default(Text("OK")))
        
        static let invalidEmail  = AlertItem(title: Text("invalid email"),
                                            message: Text("Please ensure the email is correct"),
                                            dismissButton: .default(Text("OK")))
        
        static let userSaveSuccess  = AlertItem(title: Text("Profile Saved"),
                                            message: Text("your profile got saved successfully saved"),
                                            dismissButton: .default(Text("OK")))
        
        static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                            message: Text("Their was an error savings for retrieving your profile"),
                                            dismissButton: .default(Text("OK")))

    
}
