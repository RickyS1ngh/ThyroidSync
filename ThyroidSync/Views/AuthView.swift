//
//  AuthView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/9/26.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        ZStack {
            AuthImageView(
                imagePath: "pill_image",
                width: 230,
                height: 230,
                x: -75,
                y: -10
            )
            AuthImageView(
                imagePath: "blood_work_image",
                width: 200,
                height: 200,
                x: 150,
                y: -300
            )
            AuthImageView(
                imagePath: "breakfast_image",
                width: 450,
                height: 300,
                x: 200,
                y: 30
            )
            AuthImageView(
                imagePath: "running_image",
                width: 150,
                height: 150,
                x: -50,
                y: -250
            )

            Text("ThyroidSync")
                .font(.custom("Molgan", size: 25))
                .offset(x: -100, y: 150)

            Text("Your Health \n   in Your Hands")
                .multilineTextAlignment(.center)
                .font(.title)
                .fontWeight(.bold)
                .offset(x: -90, y: 200)

            Button(
                action: {},
                label: {
                    Text("Sign in")
                        .font(.custom("NeueHaasDispaly", size: 20))
                        .foregroundStyle(.white)
                }
            )
            .frame(width: 350, height: 50)
            .background(Color.blue)
            .clipShape(Capsule())
            .offset(y: 300)

            Button(
                action: {},
                label: {
                    Text("Login")
                        .font(.custom("NeueHaasDispaly", size: 20))
                        .foregroundStyle(.white)
                }
            )
            .frame(width: 350, height: 50)
            .background(Color.blue)
            .clipShape(Capsule())
            .offset(y: 360)
        }
    }
}

#Preview {
    AuthView()
}
