//
//  ClippingExampleView.swift
//  WWDC20
//
//  Created by Ilter Cengiz on 6/27/20.
//

import SwiftUI

struct ClippingExampleView: View {

    var body: some View {
        ZStack {
            ContainerRelativeShape() // Do we need to be in a Widget?
                .inset(by: 10)
            Image("Pikachu")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(Color.blue)
                .clipShape(ContainerRelativeShape()) // Do we need to be in a Widget?
                .padding(.all, 20)
        }
        .background(Color.green)
        .cornerRadius(64.0)
//        .clipShape(RoundedRectangle(cornerRadius: 64.0, style: .continuous))
    }
}

struct ClippingExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ClippingExampleView()
    }
}
