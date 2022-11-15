//
//  NewsDetailedView.swift
//  Global news
//
//  Created by Hugo on 12.11.22.
//

import SwiftUI

struct NewsDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var newsComponent: News
    var body: some View {
        VStack {
            ZStack {
                
                Color("AppBackground")
                    .ignoresSafeArea()
                
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
        }
        .navigationBarHidden(true)
    }
}

//struct NewsDetailedView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsDetailedView(newsComponent: TrendingNews(image: "indonesia-nature",
//                                                     title: "title",
//                                                     category: "Category",
//                                                     author: "Author",
//                                                     content: "Content",
//                                                     uploadTime: "0:00",
//                                                     numberOfComments: 00))
//    }
//}

struct DetailedBackgroundView: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
    }
}

struct DetailedCategoryView: View {
    var category: String
    var body: some View {
        Text(category)
            .padding(.vertical, 4)
            .padding(.horizontal, 10)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .background(Color(.systemOrange))
            .cornerRadius(4)
    }
}

struct DetailedTimeView: View {
    var time: String
    var body: some View {
        HStack {
            Image(systemName: "clock")
            Text(time)
        }
        .fontWeight(.light)
        .foregroundColor(.gray)
    }
}

struct DetailedTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .foregroundColor(Color("AppFont"))
    }
}

struct DetailedAuthorView: View {
    var author: String
    var body: some View {
        HStack {
            Image(systemName: "pencil")
            Text(author)
        }
    }
}

struct DetailedCommentsView: View {
    var comments: Int
    var body: some View {
        HStack(alignment: .bottom) {
            Image(systemName: "bubble.right.fill")
            Text("\(comments)")
        }
    }
}

struct DetailedContentView: View {
    var content: String
    var body: some View {
        Text(content)
            .font(.subheadline)
            .foregroundColor(Color("AppFont"))
    }
}
