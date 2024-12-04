//
//  Profile.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color.eerieBlack
                .ignoresSafeArea(edges: .top)
            Text("профиль")
        }
    }
}

#Preview {
    Profile()
}
