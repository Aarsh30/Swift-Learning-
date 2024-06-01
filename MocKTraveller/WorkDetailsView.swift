//
//  WorkDetailsView.swift
//  MocKTraveller
//
//  Created by Aarsh  Patel on 20/02/24.
//

import SwiftUI
import GoMMTCoreKit

struct WorkDetailsView: View {
    @State private var companyname: String = ""
    
    @State private var name: String = ""
      @State private var phone: String = ""
      @State private var nameErr: String = ""
      @State private var phoneErr: String = ""
    
    var body: some View {
        VStack{
            Form{
                
                TextField("COMPANY NAME",text: $companyname)
                TextField("DESIGNATION",text: $companyname)
                TextField("WORK EMAIL ID",text: $companyname)
                TextField("ANNUAL INCOME",text: $companyname)
                Text("This may be verified with your payslip/ITR")
                    .font(.system(size: 12))
            }.lineSpacing(5)
            .padding(.top, 10)
            
            
         
                
            
        }
       
    }
}

#Preview {
    WorkDetailsView()
}
