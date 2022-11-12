//
//  TrendingNews.swift
//  Global news
//
//  Created by Hugo on 11.11.22.
//

import Foundation

struct TrendingNews {
    let id = UUID()
    let image: String
    let title: String
    let category: String
    let author: String
    let content: String
    let uploadTime: String
    let numberOfComments: Int
}

struct TrendingCarousel {
    static let allNews = [
        // MARK: 5 tourist attractions that you must visit while in Indonesia
        TrendingNews(image: "indonesia-nature",
                     title: "5 tourist attractions that you must visit while in Indonesia",
                     category: "Travel",
                     author: "Achmad Alimin",
                     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                     uploadTime: "15:34",
                     numberOfComments: 23),
        // MARK: FTX: Crypto giant collapses into bankruptcy
        TrendingNews(image: "ftx-bankruptcy",
                     title: "FTX: Crypto giant collapses into bankruptcy",
                     category: "Technology",
                     author: "Natalie Sherman",
                     content: "Embattled cryptocurrency exchange FTX has filed for bankruptcy in the US, seeking court protection as it looks for a way to return money to users. Former boss Sam Bankman-Fried has also stepped down as chief executive, the company said. It is a massive turn of fortunes for the 30-year-old, who had headed the world's second largest crypto exchange. In just over a week, his FTX empire has collapsed, shaking confidence in the already troubled crypto market. \"I'm really sorry, again, that we ended up here. Hopefully things can find a way to recover,\" Mr Bankman-Fried, nicknamed the 'King of Crypto', wrote on Twitter on Friday. \"I was shocked to see things unravel the way they did.\"",
                     uploadTime: "20:17",
                     numberOfComments: 65),
        // MARK: Cassius Turvey: Mother's grief at killing that's shocked Australia
        TrendingNews(image: "mothers-grief-killing",
                     title: "Cassius Turvey: Mother's grief at killing that's shocked Australia",
                     category: "World",
                     author: "Shaimaa Khalil",
                     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                     uploadTime: "20:00",
                     numberOfComments: 214),
        // MARK: Masks Cut Covid Spread in Schools, Study Finds
        TrendingNews(image: "covid-school-masks-cut",
                     title: "Masks Cut Covid Spread in Schools, Study Finds",
                     category: "Covid",
                     author: "Rony Rabin",
                     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                     uploadTime: "12:34",
                     numberOfComments: 53),
        // MARK: The Sad Fate of the Ancient, Well-Shelled Mariners
        TrendingNews(image: "well-shelled-mariners",
                     title: "The Sad Fate of the Ancient, Well-Shelled Mariners",
                     category: "Science",
                     author: "Raymond Mayers",
                     content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                     uploadTime: "23:12",
                     numberOfComments: 23)
    ]
}
