//
//  trumpUS.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct trumpUS: View {
    var body: some View {
        ZStack {
            Color(red: 12/256, green: 36/256, blue: 77/256)
                .ignoresSafeArea()
            ScrollView {
                    VStack {
                        Image("rw")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400.0, height: 200.0)
                            .clipped()
                            .offset(y:-10)
                        Text("Trump vs. United States")
                            .font(Font.custom("PlayfairDisplay-Regular", size:33))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, 16)
                        VStack(alignment: .leading) {
                            Text("Former President Donald Trump was indicted in August 2023 on four counts arising from Special Counsel Jack Smith’s investigation into the January 6, 2021, attacks on the U.S. Capitol. Trump claimed that he cannot be prosecuted for his official acts as president and that a former president cannot be prosecuted unless he has first been impeached by the House and convicted by the Senate.")
                                .font(Font.custom("PlayfairDisplay-Regular", size:17))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 128/256, green: 0/256, blue: 32/256))
                                )
                                .frame(width: 350.0, height: 350.0)
                            Link("More about Trump vs. United States", destination: URL(string: "https://www.supremecourt.gov/opinions/23pdf/23-939_e2pg.pdf")!)
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
    trumpUS()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
