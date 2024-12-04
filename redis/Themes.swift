//
//  Themes.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct Themes: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.eerieBlack
                .ignoresSafeArea(edges: .top)
            
            NavigationStack {
                
                ScrollView {
                    HStack {
                        
//                      Не работает в симуляторе
                        NavigationLink(destination: ThemeFonts()) {
                            ZStack(alignment: .bottomLeading) {
                                Image("themeImage1")
                                    .resizable()
                                    .frame(width: 177, height: 300)
                                
                                VStack(alignment: .leading, spacing: -8) {
                                    Text("#fonts")
                                        .font(
                                            Font.custom("Bricolage Grotesque", size: 52)
                                                .weight(.medium)
                                        )
                                    Text("124 таски")
                                        .font(
                                            Font.custom("GolosText", size: 21)
                                        )
                                }
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                            }
                        }
                        
                        VStack {
                            ZStack(alignment: .bottomLeading) {
                                Image("themeImage2")
                                    .resizable()
                                    .frame(width: 177, height: 146)
                                
                                VStack(alignment: .leading, spacing: -8) {
                                    Text("#ui")
                                        .font(
                                            Font.custom("Bricolage Grotesque", size: 52)
                                                .weight(.medium)
                                        )
                                    Text("22 таски")
                                        .font(
                                            Font.custom("GolosText", size: 21)
                                        )
                                }
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                            }
                            
                            ZStack(alignment: .bottomLeading) {
                                Image("themeImage3")
                                    .resizable()
                                    .frame(width: 177, height: 146)
                                
                                VStack(alignment: .leading, spacing: -8) {
                                    Text("#logo")
                                        .font(
                                            Font.custom("Bricolage Grotesque", size: 52)
                                                .weight(.medium)
                                        )
                                    Text("52 таски")
                                        .font(
                                            Font.custom("GolosText", size: 21)
                                        )
                                }
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                            }
                        }
                    }
                    
                    ZStack(alignment: .bottomLeading) {
                        Image("themeImage1")
                            .resizable()
                            .frame(width: 362, height: 220)
                        
                        VStack(alignment: .leading, spacing: -8) {
                            Text("#interior")
                                .font(
                                    Font.custom("Bricolage Grotesque", size: 52)
                                        .weight(.medium)
                                )
                            Text("34 таски")
                                .font(
                                    Font.custom("GolosText", size: 21)
                                )
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                    }
                }
                .padding(.top, 32)
                
            }
            .searchable(text: $searchText)
              
        }
    }
}

#Preview {
    Themes()
}
