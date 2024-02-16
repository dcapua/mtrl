//
//  MaterialListCell.swift
//  MTRL
//
//  Created by Danny Capua on 2/8/24.
//

import SwiftUI

struct MaterialListCell: View {
    
    let material: Material
    
    var body: some View {
        HStack {
            Image(material.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit) // maintains aspect ratio
                .frame(width: 80)
                .cornerRadius(20)
            VStack (alignment: .leading){
                Text(material.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text(material.natural)
                    .font(.callout)
                    .fontWeight(.light)
            }
        }
    }
}

#Preview {
    MaterialListCell(material: Data.sampleMaterial)
}
