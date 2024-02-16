//
//  MTRLApp.swift
//  MTRL
//
//  Created by Danny Capua on 1/14/24.
//

import SwiftUI

@main
struct MTRLApp: App {
    
    var favorites = Favorites()
    
    var body: some Scene {
        WindowGroup {
            MaterialTabView().environmentObject(favorites)
        }
    }
}
