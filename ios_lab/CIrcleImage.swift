//
//  CIrcleImage.swift
//  ios_lab
//
//  Created by Максат on 26.11.2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

struct CircleImage2: View {
    var body: some View {
        Image("doctor")
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

struct CircleImage3: View {
    var body: some View {
        Image("doctor2")
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage3()
            }
}
