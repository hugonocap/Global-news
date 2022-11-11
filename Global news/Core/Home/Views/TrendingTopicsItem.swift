//
//  TrendingTopicsItem.swift
//  Global news
//
//  Created by Hugo on 9.11.22.
//

import SwiftUI

struct TrendingTopicsItem: View {
    var newsComponent: TrendingNews
    var body: some View {
        ZStack(alignment: .center) {
            
            // MARK: Card image
            BackgroundImageView(newsComponent: newsComponent, image: newsComponent.image)
        }
    }
}

struct TrendingTopicsItem_Previews: PreviewProvider {
    var newsComponent: TrendingNews
    static var previews: some View {
        TrendingTopicsItem(newsComponent: TrendingNews(image: "", title: "", category: "", author: "", content: "", uploadTime: "", numberOfComments: 1))
            .padding()
    }
}

struct BackgroundImageView: View {
    var newsComponent: TrendingNews
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .cornerRadius(10)
            .scaledToFit()
            .shadow(color: .gray, radius: 8, y: 5)
            .frame(height: UIScreen.main.bounds.height / 4)
            .overlay(
                
                // MARK: Top buttons
                VStack {
                    HStack(alignment: .bottom, spacing: 12) {
                        Spacer()
                        
                        Image(systemName: "bubble.right.fill")
                        Image(systemName: "square.and.arrow.up.fill")
                    }
                    .padding(.trailing, 5)
                    .padding(.bottom, 35)
                    .foregroundColor(.white)
                    
                    // MARK: Category and news title
                    VStack(alignment: .leading, spacing: 14) {
                        
                        CategoryView(category: newsComponent.category)
                        
                        TitleView(title: newsComponent.title)
                        
                        // MARK: Author
                        AuthorView(author: newsComponent.author)
                    }
                }
                    .padding()
            )
    }
}

struct TrendingCategoryView: View {
    var category: String
    var body: some View {
        Text(category)
            .font(.caption)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color(.systemOrange))
            .cornerRadius(5)
    }
}

struct TrendingTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.medium)
            .font(.headline)
            .lineLimit(2)
    }
}

struct TrendingAuthorView: View {
    var author: String
    var body: some View {
        HStack {
            Image(systemName: "pencil")
            Text(author)
        }
        .foregroundColor(Color(.systemGray3))
        .font(.footnote)
    }
}
