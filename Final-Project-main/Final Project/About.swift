//
//  About.swift
//  Final Project
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct About: View {
    var body: some View {
        ZStack {
            // Background color
            Color(red: 12/256, green: 36/256, blue: 77/256)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    // Title
                    Text("About us")
                        .font(Font.custom("PlayfairDisplay-Bold", size:55))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 30)
                        .frame(maxWidth: .infinity, alignment: .center)
                    // Subtitle
                    HStack {
                        Text("Our Purpose")
                            .font(Font.custom("PlayfairDisplay-Bold", size:25))
                            .foregroundColor(.white)
                            .offset(x:30)
                            .padding(.leading, 16)
                        Spacer()
                    }
                    .padding(.top, 8)
                    // Text Box
                    ZStack {
                        Color(red: 128/256, green: 0/256, blue: 32/256)
                            .frame(height: 250)
                            .frame(width: 360)
                            .cornerRadius(10)
                            .padding(21)
                            .offset(y:-20)
                        Text("We aim to create an unbiased location for \n people to navigate the complexities of the American government. DemocraTECH \nprovides a centralized source for individuals \nto learn more about the current state of the federal and local government. This ensures \nthat every citizen can make informed \ndecisions and play a significant role in \nour nation.")
                            .font(Font.custom("PlayfairDisplay-Regular", size:18))
                            .offset(y:-20)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    Spacer()
                    HStack {
                        Text("Our Team")
                            .font(Font.custom("PlayfairDisplay-Bold", size:25))
                            .foregroundColor(.white)
                            .offset(x:30)
                            .offset(y:-15)
                            .padding(.leading, 16)
                        Spacer()
                    }
                    .padding(.top, 16)
                    // Bottom Red Box with Images and Descriptions
                    ZStack {
                        Color(red: 128/256, green: 0/256, blue: 32/256)
                            .frame(height: 180)
                            .frame(width: 369)
                            .cornerRadius(10)
                            .offset(y:-30)
                            .offset(x: 3)
                            .padding(5)
                        HStack {
                            VStack {
                                HStack(spacing: 5) {
                                    VStack {
                                        Image("nafi")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 120, height: 120)
                                            .clipShape(Circle())
                                            .offset(y:-30)
                                        Text("Nafiah \n Nazeer")
                                            .font(Font.custom("PlayfairDisplay-Regular", size:15))
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .multilineTextAlignment(.center)
                                            .offset(y:-30)
                                    }
                                    VStack {
                                        Image("nat")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 120, height: 120)
                                            .clipShape(Circle())
                                            .offset(y:-30)
                                        Text("Natalie \n Ju")
                                            .font(Font.custom("PlayfairDisplay-Regular", size:15))
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .multilineTextAlignment(.center)
                                            .offset(y:-30)
                                    }
                                    VStack {
                                        Image("sri")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 120, height: 120)
                                            .clipShape(Circle())
                                            .offset(y:-30)
                                        Text("Srinanditha\n Kamath")
                                            .font(Font.custom("PlayfairDisplay-Regular", size:15))
                                            .foregroundColor(.white)
                                            .font(.caption)
                                            .multilineTextAlignment(.center)
                                            .offset(y:-30)
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    About()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
