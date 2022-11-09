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
            
            // MARK: Card image
            Image("indonesia-nature")
                .resizable()
                .cornerRadius(10)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 4)
            
            // MARK: Blur
            RoundedRectangle(cornerRadius: 10)
                .background(.thinMaterial)
                .opacity(0.15)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 4)
            
            // MARK: Top buttons
            VStack {
                HStack(alignment: .bottom, spacing: 12) {
                    Spacer()
                    
                    Image(systemName: "bubble.right.fill")
                    Image(systemName: "square.and.arrow.up.fill")
                }
                .padding(.trailing, 5)
                .padding(.bottom, 35)
                .foregroundColor(.white)
                
                // MARK: Category and news title
                VStack(alignment: .leading, spacing: 14) {
                    
                    Text("Travel")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .background(.orange)
                        .cornerRadius(5)
                    
                    Text("5 tourist attractions that you must visit while in Indonesia")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.headline)
                    
                    // MARK: Author
                    HStack {
                        Image(systemName: "pencil")
                        Text("Hugo Montana")
                    }
                    .foregroundColor(Color(.systemGray3))
                    .font(.footnote)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct TrendingTopicsItem_Previews: PreviewProvider {
    static var previews: some View {
        TrendingTopicsItem()
            .padding()
    }
}
