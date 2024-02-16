//
//  MaterialBentoCell.swift
//  MTRL
//
//  Created by Danny Capua on 2/13/24.
//

import SwiftUI

struct MaterialGridCell: View {
    
    let material: Material
    
    var body: some View {
        VStack {
            Image(material.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit) // maintains aspect ratio
                .frame(width: 140)
                .cornerRadius(20)
                .padding(.top)
                
            Text(material.name)
                .font(.title3)
                //.fontWeight(.medium)
                .bold()
                .foregroundStyle(Color(.label))
                .padding(.bottom)
            
        }
//        .frame(width: 150)
//        .background(.gray)
//        .cornerRadius(20)
//        .overlay(
//            RoundedRectangle(cornerRadius: 20)
//                //.inset(by: -5)
//                .stroke(Color(.label), lineWidth: 1)
//        )
    }
}

#Preview {
    MaterialGridCell(material: Data.sampleMaterial)
}
