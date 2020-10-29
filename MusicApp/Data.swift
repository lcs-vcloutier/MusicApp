//
//  Data.swift
//  MusicApp
//
//  Created by Cloutier, Vincent on 2020-10-27.
//

import Foundation
import SwiftUI

class OurData: ObservableObject {
    @Published public var albums = [Album(name: "Album 1", image: "1",
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
                                Song(name: "Song 175", time: "2:36")])]}
