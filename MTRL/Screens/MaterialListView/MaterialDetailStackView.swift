//
//  MaterialDetailView2.swift
//  MTRL
//
//  Created by Danny Capua on 2/14/24.
//

import SwiftUI

struct MaterialDetailStackView: View {
    
    @EnvironmentObject var favorites: Favorites // contain isShowingDupAlert
    @State private var isShowingSafariView = false
    let material: Material
    
    var body: some View {
        VStack {
            
            MaterialGridCell(material: material)
                .padding()
            
            ScrollView {
                Text(material.description)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    .padding(.horizontal)
            }
            .frame(height: 200)
            
            VStack {
                // Favorites Button
                Button {
                    favorites.add(material)
                } label: {
                    Label("Add To Favorites", systemImage: "star.fill")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(Color("mainColor"))
                
                // More Info Button
                Button {
                    isShowingSafariView = true
                } label: {
                    Label("More Info", systemImage: "book.fill")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(Color("mainColor"))
            }
            .padding()
        }
        .background(Color(.systemBackground)) // light/dark mode
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: material.urlString) ?? URL(string: "https://www.apple.com")!)
        }
        .alert(isPresented: $favorites.isShowingDupAlert) {
            Alert(title: Text("Duplicate Material"), message: Text("Material is already in favorites."), dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    MaterialDetailStackView(material: Data.sampleMaterial).environmentObject(Favorites())
}
