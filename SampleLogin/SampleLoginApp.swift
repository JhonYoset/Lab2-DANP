//
//  SampleLoginApp.swift
//  SampleLogin
//
//  Created by Jhon Yoset Luna Quispe on 29/09/24.
//

import SwiftUI

@main
struct SampleLoginApp: App {
    @State var isLoggedin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedin {
                HomeView()
            } else {
                LoginView(isLoggedin: $isLoggedin)
            }
        }
    }
}

