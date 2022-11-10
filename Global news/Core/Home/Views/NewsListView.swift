//
//  NewsListView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(0 ..< 5) { _ in
                NewsListItemView()
            }
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
