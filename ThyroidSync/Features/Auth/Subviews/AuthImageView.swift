//
//  AuthImageView.swift
//  ThyroidSync
//
//  Created by Ricky Singh on 11/9/26.
//

import SwiftUI

struct AuthImageView: View {
    let imagePath: String
    let width : CGFloat
    let height: CGFloat
    let x: CGFloat
    let y: CGFloat

    var body: some View {

            Image(imagePath)
                .resizable()
                .frame(width: width, height: height)
                .clipShape(Circle())
                .offset(x: x, y: y)
    }
}

#Preview {
    AuthImageView(imagePath: "breakfast_image", width: 150, height: 200, x: -10, y: 0)
}
