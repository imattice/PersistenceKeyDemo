//
//  WelcomeView.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 10/2/23.
//

import SwiftUI

struct WelcomeView: View {
    @State var userName: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to this Persistence Key Demo App!")
                .font(.title)
                .bold()

            Spacer()

            Text("Please enter a user name")

            TextField("User Name", text: $userName)
                .textFieldStyle(.roundedBorder)

            Spacer()

            Button("Confirm", action: confirm)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding()
    }

    private func confirm() {
        UserDefaults.standard.set(userName, forKey: .userName)
        UserDefaults.standard.set(false, forKey: .isNewUser)
    }
}

#Preview {
    WelcomeView()
}
