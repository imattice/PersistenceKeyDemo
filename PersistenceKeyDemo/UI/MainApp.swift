//
//  MainApp.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 9/13/23.
//

import SwiftUI

@main
struct MainApp: App {
    @AppStorage(.isNewUser) var isNewUser: Bool?

    var body: some Scene {
        WindowGroup {
            if let isNewUser,
                isNewUser == true {
                WelcomeView()
            } else {
                RootView()
            }
        }
    }

    init() {
        setUpApplication()
    }

    private func setUpApplication() {
        setNewUser()
    }

    private func setNewUser() {
        let isNewUser: Bool? = UserDefaults.standard.bool(forKey: .isNewUser)

        if isNewUser == nil {
            UserDefaults.standard.set(true, forKey: .isNewUser)
        }
    }
}
