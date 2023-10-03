//
//  WelcomeView.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 10/2/23.
//

import SwiftUI

struct WelcomeView: View {
    @State var userName: String = ""
    @State var favoriteColor: Color = .blue

    var body: some View {
        NavigationStack {
            Form {
                TextField("User Name", text: $userName)

                ColorPicker("Select Your Favorite Color",
                            selection: $favoriteColor,
                            supportsOpacity: false)
                Button("Confirm", action: confirm)
                    .frame(maxWidth: .infinity, alignment: .center)

            }
            .navigationTitle("Welcome!")
        }
    }

    private func confirm() {
        withAnimation {
            UserDefaults.standard.set(userName, forKey: .userName)
            UserDefaults.standard.set(favoriteColor, forKey: .preferredColor)
            UserDefaults.standard.set(false, forKey: .isNewUser)
        }
    }
}

#Preview {
    WelcomeView()
}
