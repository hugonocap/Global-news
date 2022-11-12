//
//  NewsDetailedView.swift
//  Global news
//
//  Created by Hugo on 12.11.22.
//

import SwiftUI

struct NewsDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            ZStack {
                
                ScrollView {
                    ZStack {
                        // MARK: Background
                        Image("indonesia-nature")
                            .resizable()
                            .scaledToFill()
                            
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
                            Text("Travel")
                                .padding(.vertical, 4)
                                .padding(.horizontal, 10)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .background(Color(.systemOrange))
                                .cornerRadius(4)
                            Spacer()
                            HStack {
                                Image(systemName: "clock")
                                Text("15:34")
                            }
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                        }
                        .font(.caption)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("5 tourist attractions that you must visit while in Indonesia")
                                .fontWeight(.bold)
                                .foregroundColor(Color("AppFont"))
                            
                            HStack {
                                HStack {
                                    Image(systemName: "pencil")
                                    Text("Achmad Alimin")
                                }
                                
                                Spacer()
                                
                                HStack(alignment: .bottom) {
                                    Image(systemName: "bubble.right.fill")
                                    Text("23")
                                }
                                
                                Image(systemName: "square.and.arrow.up.fill")
                            }
                            .foregroundColor(Color("AppFontSecondary"))
                            .font(.footnote)
                        }
                        
                        Divider()
                            .padding(.bottom)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                            .font(.subheadline)
                            .foregroundColor(Color("AppFont"))
                        
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

struct NewsDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailedView()
    }
}
