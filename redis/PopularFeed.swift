//
//  PopularFeed.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct PopularFeed: View {
    var body: some View {
        
        ScrollView(.vertical) {
                Tasks()
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    PopularFeed()
}
