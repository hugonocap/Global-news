//
//  TrendingTopicsView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct TrendingTopicsView: View {
    var news: [TrendingNews] = TrendingCarousel.allNews
    var body: some View {
        VStack(alignment: .leading) {
            Text("Trending Topics")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(news, id: \.id) { item in
                        TrendingTopicsItem(newsComponent: item)
                    }
                    .frame(height: 250)
                }
                .padding(.leading)
            }
            .padding([.trailing, .leading], -20)
        }
        .padding(.top)
    }
}

struct TrendingTopicsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingTopicsView()
            .padding()
    }
}
