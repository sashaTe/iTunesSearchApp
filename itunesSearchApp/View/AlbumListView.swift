//
//  AlbumListView.swift
//  itunesSearchApp
//
//  Created by Alexander Zarutskiy on 06.09.2023.
//

import SwiftUI

struct AlbumListView: View {
    @StateObject var vm = AlbumListViewModel()
    
    var body: some View {
        NavigationView {
            List(vm.albums) { album in
                Text(album.collectionName)
                
            }
            .searchable(text: $vm.searchTerm)
            .navigationTitle("Search Albums")
        }
        
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
