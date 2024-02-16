//
//  Favorites.swift
//  MTRL
//
//  Created by Danny Capua on 2/9/24.
//

import SwiftUI

final class Favorites: ObservableObject { // SwiftUI views watch this for changes in @Published properties
    @Published var items: [Material] = []
    @Published var isShowingDupAlert = false
    
    func add(_ material: Material) {
        if items.contains(material) { //duplicates
            isShowingDupAlert = true
        } else {
            items.append(material)
        }
    }
}
