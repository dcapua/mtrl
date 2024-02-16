//
//  MaterialDetailView.swift
//  MTRL
//
//  Created by Danny Capua on 2/8/24.
//

import SwiftUI

struct MaterialDetailView: View {
    
    @EnvironmentObject var favorites: Favorites // contain isShowingDupAlert
    
    let material: Material
    @State private var isShowingSafariView = false
    @Binding var isShowingDetail: Bool // use @Binding when using vars between views (this is used in MaterialListView)
    
    var body: some View {
        ZStack {
            VStack {
                
                //Image
                Image(material.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit) // maintains aspect ratio
                    .frame(width: 120)
                    .cornerRadius(20)
                    .padding(.top)
                
                // Description
                VStack {
                    Text(material.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView {
                        Text(material.description)
                            .multilineTextAlignment(.center)
                            .font(.body)
                            .padding(.horizontal)
                    }
                }
                
                VStack {
                    // Favorites Button
                    Button {
                        favorites.add(material)
                    } label: {
                        Label("Add To Favorites", systemImage: "star")
                    }
                    
                    // More Info Button
                    Button {
                        isShowingSafariView = true
                    } label: {
                        Label("More Info", systemImage: "book.fill")
                    }
                    .padding(.top)
                    .fullScreenCover(isPresented: $isShowingSafariView) {
                        SafariView(url: URL(string: material.urlString) ?? URL(string: "https://www.apple.com")!)
                    }
                }
                .padding()
            }
            .frame(width: 325, height: 700)
            .background(Color(.systemBackground)) // light/dark mode
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 40)
            .overlay(Button { // X button
                withAnimation{
                    isShowingDetail = false
                }
            } label: {
                XDismissButton()
            }, alignment: .topTrailing)
            .alert(isPresented: $favorites.isShowingDupAlert) {
                Alert(title: Text("Duplicate Material"), message: Text("Material is already in favorites."), dismissButton: .default(Text("OK")))
            }
            
        }
    }
}

#Preview {
    MaterialDetailView( material: Data.sampleMaterial,
                        isShowingDetail: .constant(true))
    .environmentObject(Favorites())
}
