//
//  XButton.swift
//  MTRL
//
//  Created by Danny Capua on 2/8/24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color(.label))
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44) // bigger frame than circle to enlarge touch target
                .foregroundStyle(Color(.label))
        }
    }
}

#Preview {
    XDismissButton()
}
