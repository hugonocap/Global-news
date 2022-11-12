//
//  HomeView.swift
//  Global news
//
//  Created by Hugo on 9.11.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        HeaderView()
                        TrendingTopicsView()
                        CategoriesView()
                        NewsListView()
                    }
                    .padding(.horizontal)
                    }
                    .edgesIgnoringSafeArea(.top)
                
                BottomTabBarView()
                    
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
