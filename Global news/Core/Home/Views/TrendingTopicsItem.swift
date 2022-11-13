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
        ZStack {
            TrendingBackgroundView(image: newsComponent.image)
            
            VStack(alignment: .leading) {
                // MARK: Header icons
                HStack(alignment: .bottom) {
                    Spacer()
                    
                    Image(systemName: "bubble.right.fill")
                    Image(systemName: "square.and.arrow.up.fill")
                }
                .foregroundColor(.white)
                .font(.subheadline)
                
                Spacer()
                
                // MARK: Content
                VStack(alignment: .leading, spacing: 10) {
                    // MARK: Category icon
                    TrendingCategoryView(category: newsComponent.category)
                    
                    // MARK: Title
                    TrendingTitleView(title: newsComponent.title)
                    
                    // MARK: Author
                    TrendingAuthorView(author: newsComponent.author)
                }
            }
            .padding()
            .frame(width: 360, height: 200)
        }
    }
}

struct TrendingTopicsItem_Previews: PreviewProvider {
    static var previews: some View {
        TrendingTopicsItem(newsComponent: TrendingNews(image: "meta-lay-off",
                                                       title: "Meta lay Off",
                                                       category: "Travel",
                                                       author: "Hugo Montana",
                                                       content: "nothing",
                                                       uploadTime: "00:00",
                                                       numberOfComments: 0))
            .padding()
    }
}


struct TrendingBackgroundView: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 360, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .brightness(-0.025)
            .clipped()
    }
}

struct TrendingCategoryView: View {
    var category: String
    var body: some View {
        Text(category)
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .fontWeight(.bold)
            .font(.caption)
            .background(Color(.systemOrange))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

struct TrendingTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.subheadline)
    }
}

struct TrendingAuthorView: View {
    var author: String
    var body: some View {
        HStack {
            Image(systemName: "pencil")
            Text(author)
        }
        .padding(2)
        .foregroundColor(Color(.systemGray3))
        .font(.caption)
        .background(.black.opacity(0.45))
        .cornerRadius(3)
    }
}
