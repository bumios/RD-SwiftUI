//
//  ContentView.swift
//  WatchRDSwiftUI WatchKit Extension
//
//  Created by Duy Tran N. on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
