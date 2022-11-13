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
             content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
             uploadTime: "12:34",
             numberOfComments: 12),
        // MARK: Alert! The following characteristics of Child victims of bullying
        News(image: "child-bullying",
             title: "Alert! The following characteristics of Child victims of bullying",
             category: "Education",
             author: "Ikka Damayan",
             content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
             uploadTime: "9:00",
             numberOfComments: 6),
        // MARK: Facebook and Instagram owner Meta to lay off more than 11,000 staff
        News(image: "meta-lay-off",
             title: "Facebook and Instagram owner Meta to lay off more than 11,000 staff",
             category: "Technology",
             author: "James Sillars",
             content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
             uploadTime: "5:45",
             numberOfComments: 120)
    ]
}
