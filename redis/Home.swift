//
//  Home.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct Home: View {
    @State var segmentedChoice = 0
    var body: some View {
        ZStack(alignment: .top) {
            Color.eerieBlack
                .ignoresSafeArea(edges: .top)
            
            VStack(spacing: 16) {
                HStack(spacing: 16) {
                    
                    Image("redisLogo")
                        .resizable()
                        .frame(width: 93, height: 57)
                    
                    Spacer()
                    
                    Text("@rootah")
                        .font(
                            Font.custom("BricolageGrotesque-Medium", size: 16)
                        )
                    
                    Image("profileImage")
                        .resizable()
                        .frame(width: 44, height: 44)
                    
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .clipShape(.rect(cornerRadius: 16))
                
                
                HStack {
                    Picker("", selection: $segmentedChoice){
                        Text("популярное").tag(0)
                        Text("подписки").tag(1)
                    }.padding(.horizontal, 16)
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                if(segmentedChoice == 0){
                    PopularFeed()
                }
                if(segmentedChoice == 1){
                    SubscriptionFeed()
                }
            }
        }
    }
}

#Preview {
    Home()
}
