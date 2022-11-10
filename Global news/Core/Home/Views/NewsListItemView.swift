//
//  NewsListItemView.swift
//  Global news
//
//  Created by Hugo on 10.11.22.
//

import SwiftUI

struct NewsListItemView: View {
    var body: some View {
        ZStack {
            Color(.white)
            
            HStack {
                Image("friends-hangout")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130)
                    .clipped()
                    
                VStack(alignment: .leading) {
                    HStack {
                        Text("Travel")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(Color(.systemOrange))
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "clock")
                            Text("15:34")
                        }
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                    }
                    .font(.footnote)
                    
                    Text("Take your friends to a new hangout in Jakarta, here's the list!")
                        .font(.system(size: 14))
                        .lineLimit(2)
                        .foregroundColor(.gray)
                    
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "pencil")
                        Text("Ikka Damayana")
                        Spacer()
                        
                        HStack {
                            Image(systemName: "bubble.right.fill")
                            Text("23")
                        }
                        
                        Image(systemName: "square.and.arrow.up.fill")
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                }
                .padding([.trailing, .bottom, .top])
            }
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(height: 125)
        .shadow(radius: 12)
    }
}

struct NewsListItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListItemView()
            .padding()
    }
}
