//
//  ContentView.swift
//  Shared
//
//  Created by Prasannakumar Manikandan on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Image("cityOk")
                .resizable()
                .ignoresSafeArea()
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .blur(radius: 10)
            VStack {
                Text("Learning Task 1")
                    .font(.headline).bold()
                    .foregroundColor(.white)
                    .padding(.bottom, 200)
                Group {
                    Text("Welcome")
                        .font(.system(size: 40)).bold()
                        .padding()
                        .foregroundColor(.white)
                    Image("apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    TextField("First Name", text: $firstName)
                        .padding()
                            .frame(height: 50)
                            .cornerRadius(5)
                            .background()
                        TextField("Password", text: $password)
                        .padding()
                            .frame(height: 50)
                            .background()
                            .cornerRadius(5)
                        Button(action: {
                            print("Button action")
                            if firstName.count > 5 && password.count > 8 {
                                
                            }
                        }) {
                            Text("LogIn")
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.black)
                                .background(Color.red)
                        }.cornerRadius(5)
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

