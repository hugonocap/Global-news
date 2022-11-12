//
//  CategoriesView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 50) {
                VStack {
                    Text("Today")
                    Capsule()
                        .foregroundColor(.blue)
                        .frame(height: 3)
                }
                VStack {
                    Text("Sports")
                }
                VStack {
                    Text("Health")
                }
                VStack {
                    Text("Entertainment")

                }
            }
            .foregroundColor(.gray)
            .padding([.leading,.bottom,.trailing])
           
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
