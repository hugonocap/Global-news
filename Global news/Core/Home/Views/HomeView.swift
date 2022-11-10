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
                ScrollView {
                        HeaderView()
                        TrendingTopicsView()
                        CategoriesView()
                    }
                    .edgesIgnoringSafeArea(.top)
                    .padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
