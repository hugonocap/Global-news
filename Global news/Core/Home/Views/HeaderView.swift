//
//  HeaderView.swift
//  Global news
//
//  Created by Hugo on 9.11.22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                
                // MARK: Greeting
                VStack(alignment: .leading, spacing: 7) {
                    Text("Good\nMorning, Hugo")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("Here's your news feed")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                // MARK: Weather
                HStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .font(.largeTitle)
                        .shadow(radius: 12)
                    Text("23°")
                        .font(.largeTitle)
                        .fontWeight(.light)
                }

            }
            // MARK: Divider
            Divider()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .padding()
    }
}
