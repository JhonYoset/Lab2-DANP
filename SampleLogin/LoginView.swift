//
//  LoginView.swift
//  SampleLogin
//
//  Created by Jhon Yoset Luna Quispe on 30/09/24.
//
import SwiftUI

struct LoginView: View {
    @Binding var isLoggedin: Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("login")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                    .padding(.bottom, 20)
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                    .padding(.top, 10)
                Button("Login", action: btnLogin)
                    .buttonStyle(.borderedProminent)
                    .padding(.top, 20)
                NavigationLink(destination: CreateAccountView()) {
                    Text("Create my account")
                        .padding(.top, 20)
                }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
    
    func btnLogin() {
        
        if !username.isEmpty && !password.isEmpty {
            isLoggedin = true
        } else {
            print("Debe ingresar un nombre de usuario y contraseña.")
        }
    }
}

