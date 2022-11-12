//
//  TrendingTopicsItem.swift
//  Global news
//
//  Created by Hugo on 9.11.22.
//

import SwiftUI

struct TrendingTopicsItem: View {
    var body: some View {
        ZStack {
            Image("indonesia-nature")
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .clipped()
            
            // MARK: Blur
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 360, height: 200)
                .background(.thinMaterial)
                .opacity(0.25)
            
            VStack(alignment: .leading) {
                // MARK: Header icons
                HStack(alignment: .bottom) {
                    Spacer()
                    
                    Image(systemName: "bubble.right.fill")
                    Image(systemName: "square.and.arrow.up.fill")
                }
                .foregroundColor(.white)
                .font(.subheadline)
                
                Spacer()
                
                // MARK: Content
                VStack(alignment: .leading, spacing: 10) {
                    // MARK: Category icon
                    Text("Travel")
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .fontWeight(.bold)
                        .font(.caption)
                        .background(Color(.systemOrange))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    
                    // MARK: Title
                    Text("5 tourist attractions that you must visit while in Indonesia")
                        .foregroundColor(.white)
                        .font(.subheadline)
                    
                    // MARK: Author
                    HStack {
                        Image(systemName: "pencil")
                        Text("Hugo Montana")
                    }
                    .foregroundColor(Color(.systemGray2))
                    .font(.caption)
                }
            }
            .padding()
            .frame(width: 360, height: 200)
        }
    }
}

struct TrendingTopicsItem_Previews: PreviewProvider {
    static var previews: some View {
        TrendingTopicsItem()
            .padding()
    }
}

