//
//  TrendingNewsDetailedView.swift
//  Global news
//
//  Created by Hugo on 13.11.22.
//

import SwiftUI

struct TrendingNewsDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var newsComponent: TrendingNews
    var body: some View {
        ZStack {
            
            ScrollView {
                ZStack {
                    // MARK: Background
                    DetailedBackgroundView(image: newsComponent.image)
                    
                    // MARK: Blur
                    Rectangle()
                        .background(.thinMaterial)
                        .opacity(0.25)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .frame(height: 300)
                    
                    
                }
                .frame(maxWidth: UIScreen.main.bounds.width)
                .frame(height: 300)
                
                // MARK: Content stack
                VStack(alignment: .leading) {
                    // MARK: Category & time
                    HStack {
                        DetailedCategoryView(category: newsComponent.category)
                        Spacer()
                        DetailedTimeView(time: newsComponent.uploadTime)
                    }
                    .font(.caption)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        DetailedTitleView(title: newsComponent.title)
                        
                        HStack {
                            // MARK: Author
                            DetailedAuthorView(author: newsComponent.author)
                            
                            Spacer()
                            // MARK: Comments
                            DetailedCommentsView(comments: newsComponent.numberOfComments)
                            
                            Image(systemName: "square.and.arrow.up.fill")
                        }
                        .foregroundColor(Color("AppFontSecondary"))
                        .font(.footnote)
                    }
                    
                    Divider()
                        .padding(.bottom)
                    // MARK: Content text
                    DetailedContentView(content: newsComponent.content)
                    
                }
                .padding()
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
            // MARK: Back button
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundColor(.black)
                            .opacity(0.6)
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: UIScreen.main.bounds.width)
                }
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}


//struct TrendingNewsDetailedView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrendingNewsDetailedView()
//    }
//}
