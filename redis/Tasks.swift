//
//  Tasks.swift
//  redis
//
//  Created by Александр on 03.12.2024.
//

import SwiftUI

struct Task: Identifiable, Hashable {
    let id = UUID()
    let avatar: String
    let nickname: String
    let tag: String
    let image: String
    let task: String
}

struct Tasks: View {
    let tasks: [Task] = [
        Task(avatar: "profileImage", nickname: "@rootah", tag: "#branding", image: "taskImage1", task: "*task: lebedev stationary"),
        Task(avatar: "profileImage", nickname: "@rootah", tag: "#packaging", image: "taskImage2", task: "*task: lebedev stationary"),
        Task(avatar: "profileImage", nickname: "@rootah", tag: "#packaging", image: "taskImage3", task: "*task: lebedev stationary"),
        Task(avatar: "profileImage", nickname: "@rootah", tag: "#packaging", image: "taskImage4", task: "*task: lebedev stationary"),
        Task(avatar: "profileImage", nickname: "@rootah", tag: "#packaging", image: "taskImage5", task: "*task: lebedev stationary")
    ]

    var body: some View {
        VStack(spacing: 24) {
            ForEach(tasks) { task in
                VStack(spacing: 0) {
                    HStack {
                        Image(task.avatar)
                            .resizable()
                            .frame(width: 44, height: 44)
                        Text(task.nickname)
                            .font(
                                Font.custom("BricolageGrotesque-Medium", size: 16)
                            )

                        Spacer()

                        Text(task.tag)
                            .font(.custom("BricolageGrotesque-Semibold", size: 20))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .background(.accent)
                    }

                    Image(task.image)
                        .resizable()
                        .frame(width: 362, height: 175)

                    HStack(alignment: .top) {
                        HStack(spacing: 4) {
                            Text(task.task)
                                .font(.custom("BricolageGrotesque", size: 16))
                            Image(systemName: "chevron.right")
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.accent)

                        Spacer()

                        HStack {
                            Image(systemName: "bookmark")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 30)

                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 30)
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 8)
                    }
                }
                .background(.onyxBlack)
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    Tasks()
}
