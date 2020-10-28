//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by Cloutier, Vincent on 2020-10-27.
//

import SwiftUI
import Firebase

@main
struct MusicAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
