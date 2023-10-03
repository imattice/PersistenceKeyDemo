//
//  RootView.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 9/13/23.
//

import SwiftUI

struct RootView: View {
    @AppStorage(.userName) var userName: String?
    @AppStorage(.preferredColor) var favoriteColor: Color?

    var userNameLabel: String {
        if let userName {
            return ", \(userName)!"
        }
        return "!"
    }

    var body: some View {
        VStack {
            Text("Welcome back\(userNameLabel)")
                .font(.title)
                .bold()

            Spacer()

            Text("This is the main app!")

            Spacer()

            Button("Delete My Account",
                   role: .cancel,
                   action: deleteAccount)
            .foregroundColor(.red)
        }
        .frame(maxWidth: .infinity)
        .background((favoriteColor ?? .blue).opacity(0.6))
    }

    private func deleteAccount() {
        UserDefaults.standard.removeObject(forKey: .userName)
        UserDefaults.standard.removeObject(forKey: .preferredColor)
        
        UserDefaults.standard.set(true, forKey: .isNewUser)
    }
}

#Preview {
    RootView()
}
