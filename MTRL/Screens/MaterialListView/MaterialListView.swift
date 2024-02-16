//
//  MaterialListView.swift
//  MTRL
//
//  Created by Danny Capua on 1/14/24.
//

import SwiftUI

struct MaterialListView: View {
    @StateObject var viewModel = MaterialListViewModel()
    
    var body: some View {
        ZStack {
            // Main Material List
            NavigationStack {
                List(Data.materials) { material in
                    MaterialListCell(material: material)
                        .onTapGesture {
                            withAnimation {
                                viewModel.selectedMaterial = material
                                viewModel.isShowingDetail = true
                            }
                        }
                }
                 .listStyle(PlainListStyle())
                
                //.navigationTitle("🧶 Materials")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        HStack {
                            Image(uiImage: UIImage(named: "AppIcon")!)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30)
                                .cornerRadius(5.0)
                                
                            
                            Text("Materials")
                                .font(.title)
                                .bold()
                        }
                    }
                }
                .disabled(viewModel.isShowingDetail) // disable scrolling when showing detail view
                //.padding(.bottom)
                
            }
            .opacity(viewModel.isShowingDetail ? 0.5 : 1)
            
            
            // Detail View
            if viewModel.isShowingDetail {
                MaterialDetailView( material: viewModel.selectedMaterial!,
                                    isShowingDetail: $viewModel.isShowingDetail)
                .transition(.blurReplace()) // ties to withAnimation
            }
        }
        
    }
}
                                
#Preview {
    MaterialListView().environmentObject(Favorites())
}
