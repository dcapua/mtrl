//
//  FavoritesView.swift
//  MTRL
//
//  Created by Danny Capua on 2/8/24.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        
        // Main Material List
        NavigationStack {
            ZStack {
                
                // Favs list and button
                VStack {
                    // Favorites list
                    List {
                        ForEach(favorites.items) { material in
                            MaterialListCell(material: material)
                                .listRowSeparatorTint(.secondary)
                        }
                        .onDelete(perform: deleteMaterial)
                    }
                    .listStyle(PlainListStyle())
                    //.navigationTitle("⭐️ Favorites")
                }
                
                // Empty favs view
                if favorites.items.isEmpty {
                    EmptyState(imageName: "yarn", message: "You have no favorites!")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { // options button
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Text("⭐️ Favorites")
                            .font(.title)
                            .bold()
                    }
                }
                ToolbarItem {
                    Menu {
                        Button (role: .destructive){
                            favorites.items.removeAll()
                        } label: {
                            Label("Delete All Favorites", systemImage: "trash")
                        }
                    } label: { // TODO - refactor with ThreeDotsButton
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color(.label))
                                .opacity(0.6)
                            Image(systemName: "slider.horizontal.3")
                                .imageScale(.small)
                                .frame(width: 44, height: 44) // bigger frame than circle to enlarge touch target
                                .foregroundStyle(Color(.label))
                        }
                    }
                }
            }
        }
    }
    
    func deleteMaterial(at offsets: IndexSet) {
        favorites.items.remove(atOffsets: offsets)
    }
}

#Preview {
    FavoritesView().environmentObject(Favorites())
}
