//
//  Court Cases.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct Court_Cases: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 12/256, green: 36/256, blue: 77/256)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        Text("Court Cases")
                            .font(Font.custom("PlayfairDisplay-Regular", size:60))
                        // .font(.system(size: 65))
                        // .font(.title)
                            .foregroundColor(.white)
                            .offset(y: -10)
                        Text("Recent Cases")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 155)
                            .font(Font.custom("PlayfairDisplay-Regular", size:35))
                        HStack{
                            VStack{
                                NavigationLink(destination: trumpUS()) {
                                    Image("courtCase")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                        .clipShape(Circle())
                                }
                                Text("Trump vs \n United States ")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("PlayfairDisplay-Regular", size:25))
                            }
                            .padding(15)
                            // .padding(.bottom, 15)
                            VStack{
                                NavigationLink(destination: fischer()) {
                                    Image("fischer")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                        .clipShape(Circle())
                                }
                                Text("Fischer vs \n United States")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("PlayfairDisplay-Regular", size:25))       .padding(.top, 2)
                            }
                            .padding(1)
                        }
                        .padding(1)
                        //Color(red: 125/256, green: 0/256, blue: 17/256)
                        .background(Rectangle() .foregroundColor(Color(red: 0.49, green: 0.0, blue: 0.0)))
                        .cornerRadius(15)
                        //.padding(.top, 0)
                        Text("Major Historical Cases")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 17)
                            .font(Font.custom("PlayfairDisplay-Regular", size:35))     //  .padding(.top, 10)
                        HStack{
                            VStack{
                                NavigationLink(destination: marbury()) {
                                    Image("marbury")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                        .clipShape(Circle())
                                }
                                Text("Marbury vs \n Madison")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("PlayfairDisplay-Regular", size:25))
                            }
                            .padding(12.0)
                            VStack{
                                NavigationLink(destination: Roe()) {
                                    Image("roe")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                        .clipShape(Circle())
                                }
                                Text("Roe vs \n Wade")
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .font(Font.custom("PlayfairDisplay-Regular", size:25))
                            }
                            .padding(12.0)
                        }
                        .background(Rectangle() .foregroundColor(Color(red: 0.49, green: 0.0, blue: 0.0)))
                        .cornerRadius(15)
                    }
                }
            }
        }
    }
}
#Preview {
    Court_Cases()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
