//
//  MaterialGridViewModel.swift
//  MTRL
//
//  Created by Danny Capua on 1/23/24.
//

import Foundation
import SwiftUI

final class MaterialListViewModel: ObservableObject {
    
    @Published var columns: [GridItem] = [GridItem(.flexible()),
                                           GridItem(.flexible())] // # of columns
    
    @Published var isShowingDetail = false
    @Published var selectedMaterial: Material?
    @Published var searchText: String = ""
    
    var filteredMaterials: [Material] {
        guard !searchText.isEmpty else { return Data.materials } // show all materials when there is no search text
        return Data.materials.filter { material in
            material.name.lowercased().contains(searchText.lowercased())
        }
    }
}
