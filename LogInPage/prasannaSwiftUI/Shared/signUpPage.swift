//
//  loginView.swift
//  prasannaSwiftUI
//
//  Created by Prasannakumar Manikandan on 19/12/21.
//

import SwiftUI


struct signUpPage: View {
    
    @State var details = ""
    var personDetails = ["First Name", "Last Name", "Password"]

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Text("search")
                TextField("Search...", text: $details)
            }.textFieldStyle(OvalTextFieldStyle())
        }
    }
}

struct signUpPage_Previews: PreviewProvider {
    static var previews: some View {
        signUpPage()
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(.gray)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
}
