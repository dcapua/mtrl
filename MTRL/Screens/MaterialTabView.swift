//
//  MaterialTabView.swift
//  MTRL
//
//  Created by Danny Capua on 2/8/24.
//

import SwiftUI

struct MaterialTabView: View {
    var body: some View {
        TabView {
            
            MaterialGridView()
                .tabItem {Label("Materials", systemImage: "house.circle.fill")}
            
            FavoritesGridView()
                .tabItem {Label("Favorites", systemImage: "star")}
            
        }
    }
}

#Preview {
    MaterialTabView().environmentObject(Favorites())
}
