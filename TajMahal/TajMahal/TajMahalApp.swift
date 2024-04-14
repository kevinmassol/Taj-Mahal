//
//  TajMahalApp.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

@main
struct TajMahalApp: App {
    init() {
        UINavigationBar.appearance().tintColor = .black
    }
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
    }
}
