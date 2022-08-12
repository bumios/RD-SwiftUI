//
//  HikeBadge.swift
//  RDSwiftUI
//
//  Created by Duy Tran N. on 29/07/2022.
//

import SwiftUI

struct HikeBadge: View {

    var name: String

    var body: some View {
        VStack(spacing: 5, content: {
            BadgeBackground()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)

            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        })
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
