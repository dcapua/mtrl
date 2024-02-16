//
//  ThreeDotsButton.swift
//  MTRL
//
//  Created by Danny Capua on 2/12/24.
//

import SwiftUI

struct ThreeDotsButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            Image(systemName: "slider.horizontal.3")
                .imageScale(.small)
                .frame(width: 44, height: 44) // bigger frame than circle to enlarge touch target
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ThreeDotsButton()
}
