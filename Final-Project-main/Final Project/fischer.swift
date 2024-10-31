//
//  fischer.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct fischer: View {
    var body: some View {
        ZStack {
            Color(red: 12/256, green: 36/256, blue: 77/256)
                .ignoresSafeArea()
            ScrollView {
                    VStack {
                        Image("fish")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400.0, height: 200.0)
                            .clipped()
                            .offset(y:-10)
                        Text("Fischer vs. United States")
                            .font(Font.custom("PlayfairDisplay-Regular", size:33))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, 16)
                        VStack(alignment: .leading) {
                            Text("On January 6, 2021, while Congress was convening to certify the results of the 2020 presidential election in favor of Joe Biden, thousands of supporters of the losing candidate, Donald Trump, converged on the United States Capitol to disrupt the proceedings. The Trump supporters swarmed the building, overwhelming law enforcement officers who attempted to stop them. The chaos wrought by the mob forced members of Congress to stop the certification and flee for safety. Congress was not able to resume its work for six hours.")
                                .font(Font.custom("PlayfairDisplay-Regular", size:17))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 128/256, green: 0/256, blue: 32/256))
                                )
                                .frame(width: 350.0, height: 350.0)
                            Link("More about Fischer vs. United States", destination: URL(string: "https://www.supremecourt.gov/opinions/23pdf/23-5572_l6hn.pdf")!)
                                .font(Font.custom("PlayfairDisplay-Regular", size:18))
                                .foregroundColor(.blue)
                                .offset(x:5)
                                .padding(.top, 8)
                        }
                }
            }
        }
    }
}

#Preview {
    fischer()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
