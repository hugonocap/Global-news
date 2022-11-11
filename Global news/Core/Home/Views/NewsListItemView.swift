//
//  NewsListItemView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct NewsListItemView: View {
    var newsComponent: News
    var body: some View {
        ZStack {
            Color(.white)
            
            HStack {
                ImageView(image: newsComponent.image)
                    
                VStack(alignment: .leading) {
                    HStack {
                        CategoryView(category: newsComponent.category)
                        
                        Spacer()
                        
                        UploadTimeView(time: newsComponent.uploadTime)
                    }
                    .font(.caption)
                    
                    TitleView(title: newsComponent.title)
                    
                    
                    Spacer()
                    
                    HStack {
                        AuthorView(author: newsComponent.author)
                        Spacer()
                        
                        CommentsView(comments: newsComponent.numberOfComments)
                        
                        Image(systemName: "square.and.arrow.up.fill")
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                }
                .padding([.trailing, .bottom, .top])
            }
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(height: 125)
        .shadow(radius: 5)
    }
}

//struct NewsListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsListItemView(newsComponent: News)
//            .padding()
//    }
//}

struct ImageView: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 130)
            .clipped()
    }
}

struct CategoryView: View {
    var category: String
    var body: some View {
        Text(category)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color(.systemOrange))
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

struct UploadTimeView: View {
    var time: String
    var body: some View {
        HStack {
            Image(systemName: "clock")
            Text(time)
        }
        .foregroundColor(.gray)
        .fontWeight(.light)
    }
}

struct TitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 14))
            .lineLimit(2)
            .foregroundColor(.gray)
    }
}

struct AuthorView: View {
    var author: String
    var body: some View {
        Image(systemName: "pencil")
        Text(author)
    }
}

struct CommentsView: View {
    var comments: Int
    var body: some View {
        HStack {
            Image(systemName: "bubble.right.fill")
            Text("\(comments)")
        }
    }
}
