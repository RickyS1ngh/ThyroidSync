//
//  LoginView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/12/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 15)
            
            Text("Log in")
                .font(.custom("NeueHaasDisplay", size: 17))
            Spacer()
                .frame(height: 30)
            Button(
                action: {},
                label: {
                    HStack {
                        Image("google_logo")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .trailing)
                            .clipShape(Circle())
                        Text("Continue with Google")
                            .font(.custom("NeueHaasDisplay", size: 17))
                            .foregroundStyle(.white)
                    }
                }
            )
            .frame(width: 350, height: 50)
            .background(Color.blue)
            .clipShape(Capsule())
            
            Button(
                action: {},
                label: {
                    HStack {
                        Image("apple_logo")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                        Text("Continue with Apple")
                            .font(.custom("NeueHaasDisplay", size: 17))
                            .foregroundStyle(.white)
                    }
                }
            )
            .frame(width: 350, height: 50)
            .background(Color.blue)
            .clipShape(Capsule())
            Spacer()
                .frame(height: 20)
            Text("OR")
                .font(.custom("NeueHaasDisplay", size: 15))
        }
        VStack {
            TextField(text: $email, label: {
            
                Text("Enter your email") })
                .padding()
                .frame(width: 375)
                .keyboardType(.emailAddress)
                .overlay {
                    RoundedRectangle(cornerRadius: 10, )
                        .stroke(Color(UIColor.gray), lineWidth: 2)
                }

            SecureField(text: $password, label: { Text("Enter your password") })
                .padding()
                .frame(width: 375)
                .overlay {
                    RoundedRectangle(cornerRadius: 10, )
                        .stroke(Color(UIColor.gray), lineWidth: 2)
                }

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
