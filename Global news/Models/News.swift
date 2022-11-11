//
//  News.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import Foundation

struct News: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let category: String
    let author: String
    let content: String
    let uploadTime: String
    let numberOfComments: Int
}

struct NewsList {
    static let allNews = [
        // MARK: Take your friends to a new hangout in Jakarta, here's the list!
        News(image: "friends-hangout",
             title: "Take your friends to a new hangout in Jakarta, here's the list!",
             category: "Travel",
             author: "Ikka Damayana",
             content: "Lorem ispum for now",
             uploadTime: "12:34",
             numberOfComments: 12),
        // MARK: Alert! The following characteristics of Child victims of bullying
        News(image: "child-bullying",
             title: "Alert! The following characteristics of Child victims of bullying",
             category: "Education",
             author: "Ikka Damayan",
             content: "Lorem ispum for now",
             uploadTime: "9:00",
             numberOfComments: 6),
        // MARK: Facebook and Instagram owner Meta to lay off more than 11,000 staff
        News(image: "meta-lay-off",
             title: "Facebook and Instagram owner Meta to lay off more than 11,000 staff",
             category: "Technology",
             author: "James Sillars",
             content: "Lorem ispum for now",
             uploadTime: "5:45",
             numberOfComments: 120)
    ]
}
