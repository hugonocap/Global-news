//
//  NewsListView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct NewsListView: View {
    var news: [News] = NewsList.allNews
    var body: some View {
            VStack(spacing: 20) {
                ForEach(news, id: \.id) { news in
                    NavigationLink(destination: NewsDetailedView(newsComponent: news)) {
                        NewsListItemView(newsComponent: news)
                    }
            }
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
