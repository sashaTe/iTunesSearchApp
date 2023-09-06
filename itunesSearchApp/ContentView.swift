//
//  ContentView.swift
//  itunesSearchApp
//
//  Created by Alexander Zarutskiy on 06.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AlbumListView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
