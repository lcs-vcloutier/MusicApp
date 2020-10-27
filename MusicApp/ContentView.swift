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
                        songs: [Song(name: "Song 1", time: "2:36"),
                                Song(name: "Song 2", time: "2:36"),
                                Song(name: "Song 3", time: "2:36"),
                                Song(name: "Song 4", time: "2:36")]),
                  Album(name: "Album 2", image: "2",
                        songs: [Song(name: "LoveSong 1", time: "2:36"),
                                Song(name: "LoveSong 2", time: "2:36"),
                                Song(name: "LoveSong 3", time: "2:36"),
                                Song(name: "LoveSong 4", time: "2:36")]),
                  Album(name: "Album 3", image: "3",
                        songs: [Song(name: "LoveSong 1", time: "2:36"),
                                Song(name: "HappySong 14", time: "2:36"),
                                Song(name: "SadSong 16", time: "2:36"),
                                Song(name: "AngrySong 11", time: "2:36")]),
                  Album(name: "Album 4", image: "4",
                        songs: [Song(name: "Song 17", time: "2:36"),
                                Song(name: "Song 31", time: "2:36"),
                                Song(name: "Song 51", time: "2:36"),
                                Song(name: "Song 10", time: "2:36")]),
                  Album(name: "Album 5", image: "5",
                        songs: [Song(name: "Song 100", time: "2:36"),
                                Song(name: "Song 145", time: "2:36"),
                                Song(name: "Song 12", time: "2:36"),
                                Song(name: "Song 175", time: "2:36")])]
    
    @State private var currentAlbum : Album?
    
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    LazyHStack{
                        ForEach(self.albums, id: \.self, content: {
                            album in
                            AlbumArt(album: album).onTapGesture {
                                self.currentAlbum = album
                            }
                        })
                    }
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
            }.navigationTitle("My Band Name")
        }
    }
}


struct AlbumArt : View {
    var album : Album
    var body: some View {
        ZStack(alignment: .bottom, content: {
            Image(album.image).resizable().aspectRatio(contentMode: .fill).frame(width: 170, height: 200, alignment: .center)
            ZStack {
                Blur(style: .light)
                Text(album.name).foregroundColor(.white)
            }.frame(height: 60, alignment: .center)
        }).frame(width: 170, height: 200, alignment: .center).clipped().cornerRadius(20).shadow(radius: 10).padding(20)
    }
}

struct SongCell : View {
    var song : Song
    var body: some View {
        HStack {
            ZStack {
                Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.blue)
                Circle().frame(width: 20, height: 20, alignment: .center).foregroundColor(.white)
            }
            Text(song.name).bold()
            Spacer()
            Text(song.time).bold()
        }.padding(20)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
