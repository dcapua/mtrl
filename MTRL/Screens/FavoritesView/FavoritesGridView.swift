//
//  FavoritesGridView.swift
//  MTRL
//
//  Created by Danny Capua on 2/14/24.
//

import SwiftUI

struct FavoritesGridView: View {
    
    @EnvironmentObject var favorites: Favorites
    @StateObject var viewModel = MaterialListViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack { // needed for empty state
                ScrollView {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(favorites.items) { material in
                            NavigationLink(value: material) {
                                MaterialGridCell(material: material)
                            }
                            .contextMenu {
                                Button {
                                    deleteMaterial(material: material)
                                } label: { // TODO - refactor with ThreeDotsButton
                                    Label("Remove From Favorites", systemImage: "trash")
                                }
                            }
                        }
                    }
                }
                .navigationTitle("⭐️ Favorites")
                //.navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: Material.self) { material in
                    MaterialDetailStackView(material: material)
                }
                
                // Empty favs view
                if favorites.items.isEmpty {
                    EmptyState(imageName: "yarn", message: "You have no favorites!")
                }
            }
            .toolbar { // options button
                    Menu {
                        Button (role: .destructive){
                            favorites.items.removeAll()
                        } label: {
                            Label("Delete All Favorites", systemImage: "trash")
                        }
                    } label: { // TODO - refactor with ThreeDotsButton
                        ThreeDotsButton()
                    }
                
            }
        }
        .tint(Color(.label)) // back button text color
    }
    
    func deleteMaterial(material: Material) {
        favorites.items.remove(at: favorites.items.firstIndex(of: material)!)
    }
}

#Preview {
    FavoritesGridView().environmentObject(Favorites())
}
