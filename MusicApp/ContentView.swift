//
//  ContentView.swift
//  MusicApp
//
//  Created by Cloutier, Vincent on 2020-10-27.
//

import SwiftUI

struct Album : Hashable {
    var id = UUID()
    var name : String
    var image : String
    var songs : [Song]
}

struct Song : Hashable {
    var id = UUID()
    var name : String
    var time : String
    
}
struct ContentView: View {
    var albums = [Album(name: "Album 1", image: "1",
                        songs: [Song(name: "1", time: "2:36"),
                                Song(name: "2", time: "2:36"),
                                Song(name: "3", time: "2:36"),
                                Song(name: "4", time: "2:36")]),
                  Album(name: "Album 2", image: "2",
                        songs: [Song(name: "1", time: "2:36"),
                                Song(name: "2", time: "2:36"),
                                Song(name: "3", time: "2:36"),
                                Song(name: "4", time: "2:36")]),
                  Album(name: "Album 3", image: "3",
                        songs: [Song(name: "1", time: "2:36"),
                                Song(name: "2", time: "2:36"),
                                Song(name: "3", time: "2:36"),
                                Song(name: "4", time: "2:36")]),
                  Album(name: "Album 4", image: "4",
                        songs: [Song(name: "1", time: "2:36"),
                                Song(name: "2", time: "2:36"),
                                Song(name: "3", time: "2:36"),
                                Song(name: "4", time: "2:36")]),
                  Album(name: "Album 5", image: "5",
                        songs: [Song(name: "1", time: "2:36"),
                                Song(name: "2", time: "2:36"),
                                Song(name: "3", time: "2:36"),
                                Song(name: "4", time: "2:36")])]
    
    var currentAlbum : Album?
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    ForEach(self.albums, id: \.self, content: {
                        album in
                        AlbumArt(album: album)
                    })
                })
                LazyVStack {
                    ForEach((self.currentAlbum?.songs ?? self.albums.first?.songs) ?? [Song(name: "1", time: "2:36"),
                                                                                      Song(name: "2", time: "2:36"),
                                                                                      Song(name: "3", time: "2:36"),
                                                                                      Song(name: "4", time: "2:36")],
                    id: \.self,
                    content: {
                        song in
                        SongCell(song: song)
                    })
                }
            }
        }
    }
}


struct AlbumArt : View {
    var album : Album
    var body: some View {
        ZStack {
            Image(album.image).resizable().aspectRatio(contentMode: .fill).frame(width: 170, height: 200, alignment: .center)
        }.clipped().cornerRadius(20).shadow(radius: 10).padding(20)
    }
}

struct SongCell : View {
    var song : Song
    var body: some View {
        EmptyView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
