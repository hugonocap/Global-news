//
//  TrendingTopicsView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct TrendingTopicsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Trending Topics")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0 ..< 4) { _ in
                        TrendingTopicsItem()
                    }
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
