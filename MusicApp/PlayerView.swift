//
//  PlayerView.swift
//  MusicApp
//
//  Created by Cloutier, Vincent on 2020-10-27.
//

import Foundation
import SwiftUI

struct PlayerView:  View {
    var album : Album
    var song : Song
    var body: some View {
        ZStack {
            Image(album.image).resizable().edgesIgnoringSafeArea(.all)
            Blur(style: .dark).edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                AlbumArt(album: album, isWithText: false)
                Text(song.name)
                Spacer()
                ZStack{
                    Color.white.cornerRadius(20).shadow(radius: 10)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    })
                }
            }
        }
    }
    func playPause(){
        <#function body#>
    }
}
