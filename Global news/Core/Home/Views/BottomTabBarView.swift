//
//  BottomTabBarView.swift
//  Global news
//
//  Created by Hugo on 12.11.22.
//

import SwiftUI

struct BottomTabBarView: View {
    var body: some View {
        VStack {
            
            HStack(alignment: .bottom) {

                
                // MARK: All news
                BottomTabBarButtonView(isSelected: true, icon: "newspaper", text: "All News")
                    .padding(.leading, 30)
                
                Spacer()
                
                // MARK: Category
                BottomTabBarButtonView(icon: "list.bullet", text: "Category")
                
                Spacer()
                
                // MARK: Bookmark
                BottomTabBarButtonView(icon: "bookmark", text: "Bookmark")
                
                Spacer()
                              
                // MARK: Profile
                BottomTabBarButtonView(icon: "person.fill", text: "Profile")
                    .padding(.trailing, 30)
            }
            .fontWeight(.bold)
            .padding(.bottom)
            .clipShape(Rectangle())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .clipped()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct BottomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBarView()
    }
}

struct BottomTabBarButtonView: View {
    var isSelected: Bool = false
    var icon: String
    var text: String
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.headline)
                Text(text)
                    .font(.caption)
            }
            .foregroundColor(isSelected == true ? .blue : .gray)
        })
    }
}
