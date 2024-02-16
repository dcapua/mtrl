//
//  MaterialListView2.swift
//  MTRL
//
//  Created by Danny Capua on 2/14/24.
//

import SwiftUI

struct MaterialGridView: View {
    
    @EnvironmentObject var favorites: Favorites
    @StateObject var viewModel = MaterialListViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(viewModel.filteredMaterials) { material in
                        NavigationLink(value: material) {
                            MaterialGridCell(material: material)
                        }
                        .contextMenu {
                            Button {
                                favorites.add(material)
                            } label: { // TODO - refactor with ThreeDotsButton
                                Label("Add To Favorites", systemImage: "star")
                            }
                        }
                    }
                }
            }
            .navigationTitle("🧶 Materials")
            //.navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Material.self) { material in
                MaterialDetailStackView(material: material)
            }
        }
        .searchable(text: $viewModel.searchText)
        .tint(Color(.label)) // back button text color
        
    }
}

#Preview {
    MaterialGridView().environmentObject(Favorites())
}
