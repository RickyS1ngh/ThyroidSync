//
//  LoginWithButtonView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/16/26.
//

import SwiftUI

struct LoginWithButtonView: View {
    let imagePath: String
    let text: String
    var body: some View {
        Button(
            action: {},
            label: {
                HStack {
                    Image(imagePath)
                        .resizable()
                        .frame(width: 30, height: 30)
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
    }
}

#Preview {
    LoginWithButtonView(imagePath: "google_logo", text: "Continue with Google")
}
