//
//  SubscriptionFeed.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct SubscriptionFeed: View {
    var body: some View {
        
        VStack(spacing: 4) {
            Text("🤔")
                .font(.system(size: 128))
                .opacity(0.6)
            Text("здесь пока пусто...")
                .font(
                    Font.custom("BricolageGrotesque-Semibold", size: 32)
                )
                .opacity(0.4)
            Text("найдите любимых авторов\n на странице популярное")
                .font(
                    Font.custom("GolosText-Regular", size: 16)
                )
                .opacity(0.3)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)

    }
}

#Preview {
    SubscriptionFeed()
}
