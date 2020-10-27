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
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content: {
                    Text("PLaceholder")
                    })
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
