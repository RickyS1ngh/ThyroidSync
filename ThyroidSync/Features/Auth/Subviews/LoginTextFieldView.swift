//
//  LoginTextFieldView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/16/26.
//

import SwiftUI

struct LoginTextFieldView: View {
    let isSecure: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        if isSecure {
            SecureField(
                text: $password,
                label: {
                    Text("Enter your password")
                }
            )
            .padding()
            .frame(width: 375)
            .overlay {
                RoundedRectangle(cornerRadius: 10, )
                    .stroke(Color(UIColor.gray), lineWidth: 2)
            }
        } else {
            TextField(
                text: $email,
                label: {
                    Text("Enter your email")
                }
            )
            .padding()
            .frame(width: 375)
            .keyboardType(.emailAddress)
            .overlay {
                RoundedRectangle(cornerRadius: 10, )
                    .stroke(Color(UIColor.gray), lineWidth: 2)

            }

        }
    }
}

#Preview {
    LoginTextFieldView(isSecure: true)
}
