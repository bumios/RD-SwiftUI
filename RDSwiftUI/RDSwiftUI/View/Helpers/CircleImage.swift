//
//  CircleImage.swift
//  RDSwiftUI
//
//  Created by Duy Tran N. on 20/07/2022.
//

import SwiftUI

struct CircleImage: View {

    var image: Image

    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.green, lineWidth: 10)
            }
            .shadow(radius: 7)
            .frame(width: 200, height: 200)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
