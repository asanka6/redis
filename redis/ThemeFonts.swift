//
//  ThemeFonts.swift
//  redis
//
//  Created by Александр on 04.12.2024.
//

import SwiftUI

struct ThemeFonts: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color.eerieBlack
                .ignoresSafeArea(edges: .top)
            ScrollView(.vertical) {
                VStack(spacing: 24) {
                    ZStack(alignment: .bottomLeading){
                        Image("fontsImage")
                        HStack {
                            Text("#fonts")
                                .font(
                                    Font.custom("Bricolage Grotesque", size: 74)
                                        .weight(.medium)
                                )
                            
                            Spacer()
                            
                            Text("124 таски")
                                .font(
                                    Font.custom("GolosText", size: 21)
                                )
                        }
                        .padding(.horizontal, 20)
                    }
                    Tasks()
                }
            }
            .padding(.bottom, 20)
        }

    }
}

#Preview {
    ThemeFonts()
}
