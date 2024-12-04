//
//  ContentView.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
                Home()
                    .tabItem {
                        Image(systemName: "house")
                        Text("лента")
                }
                .tag(0)
                
                Themes()
                    .tabItem {
                        Image(systemName: "beziercurve")
                        Text("темы")
                    }
                    .tag(1)
                
                Blog()
                    .tabItem {
                        Image(systemName: "text.bubble")
                        Text("блог")
                    }
                    .tag(2)
                
                Profile()
                    .tabItem {
                        Image(systemName: "person")
                        Text("профиль")
                    }
                    .tag(3)
            }
        
    }
}

#Preview {
    ContentView()
}
