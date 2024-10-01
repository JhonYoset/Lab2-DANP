//
//  CreateAccountView.swift
//  SampleLogin
//
//  Created by Jhon Yoset Luna Quispe on 30/09/24.
//
import SwiftUI

struct CreateAccountView: View {
    @State private var newUsername = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack {
            Text("Create a New Account")
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            TextField("New Username", text: $newUsername)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            SecureField("New Password", text: $newPassword)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
                .padding(.top, 10)
            
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
                .padding(.top, 10)
            
            Button("Create Account", action: createAccount)
                .buttonStyle(.borderedProminent)
                .padding(.top, 20)
        }
        .padding()
        .navigationTitle("Create Account")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func createAccount() {
        if newPassword == confirmPassword && !newUsername.isEmpty && !newPassword.isEmpty {
            print("Cuenta creada para \(newUsername)")
            
        } else {
            print("Debe completar todos los campos y asegurarse de que las contraseñas coincidan.")
        }
    }
}
/*
#Preview {
    CreateAccountView()
}
*/
