//
//  BottomTabBarView.swift
//  Global news
//
//  Created by Hugo on 12.11.22.
//

import SwiftUI

struct BottomTabBarView: View {
    private var isSelected: Bool = false
    var body: some View {
        VStack {
            
            HStack(alignment: .bottom, spacing: 40) {
                
                // MARK: All news
                Button(action: {
                    
                }, label: {
                    VStack(spacing: 4) {
                        Image(systemName: "newspaper")
                            .font(.headline)
                        Text("All News")
                            .font(.caption)
                    }
                    .foregroundColor(isSelected == true ? .blue : .gray)
                })
                
                // MARK: Category
                Button(action: {
                    
                }, label: {
                    VStack(spacing: 4) {
                        Image(systemName: "list.bullet")
                            .font(.headline)
                        Text("Category")
                            .font(.caption)
                    }
                    .foregroundColor(isSelected == true ? .blue : .gray)
                })
                
                // MARK: Bookmark
                       Button(action: {
                           
                }, label: {
                    VStack(spacing: 4) {
                        Image(systemName: "bookmark")
                            .font(.headline)
                        Text("Bookmark")
                            .font(.caption)
                    }
                    .foregroundColor(isSelected == true ? .blue : .gray)
                })
                              
                // MARK: Profile
                Button(action: {
                                  
                }, label: {
                    VStack(spacing: 4) {
                        Image(systemName: "person.fill")
                            .font(.headline)
                        Text("Profile")
                            .font(.caption)
                    }
                    .foregroundColor(isSelected == true ? .blue : .gray)
                })
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
