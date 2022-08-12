//
//  ContentView.swift
//  MacRDSwiftUI
//
//  Created by Duy Tran N. on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
                    .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
