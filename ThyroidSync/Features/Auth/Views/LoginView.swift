//
//  LoginView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/12/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)

            Text("Log in")
                .font(.custom("NeueHaasDisplay", size: 17))
            Spacer()
                .frame(height: 30)

            LoginWithButtonView(
                imagePath: "google_logo",
                text: "Continue With Google"
            )
            LoginWithButtonView(
                imagePath: "apple_logo",
                text: "Continue With Apple"
            )
            Spacer()
                .frame(height: 20)
            Text("OR")
                .font(.custom("NeueHaasDisplay", size: 15))
        }
        VStack {
            LoginTextFieldView(isSecure: false)
            LoginTextFieldView(isSecure: true)

        }
        .padding()
        Spacer()
            .frame(height: 10)
        Button(
            action: {},
            label: {
                Text("Log in")
                    .font(.custom("NeueHaasDisplay", size: 17))
                    .foregroundStyle(.white)
            }
        )
        .frame(width: 350, height: 50)
        .background(Color.blue)
        .clipShape(Capsule())

        Spacer()
    }

}

#Preview {
    LoginView()
}
