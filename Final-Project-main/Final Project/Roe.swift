//
//  Roe.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct Roe: View {
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
                        Text("Roe vs Wade")
                            .font(Font.custom("PlayfairDisplay-Regular", size:35))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, 16)
                        VStack(alignment: .leading) {
                            Text("In Roe v. Wade, the Supreme Court decided that the right to privacy implied in the 14th Amendment protected abortion as a fundamental right. However, the government retained the power to regulate or restrict abortion access depending on the stage of pregnancy.")
                                .font(Font.custom("PlayfairDisplay-Regular", size:17))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 128/256, green: 0/256, blue: 32/256))
                                )
                                .frame(width: 350.0, height: 350.0)
                            Link("More about Roe v. Wade", destination: URL(string: "https://constitutioncenter.org/the-constitution/supreme-court-case-library/roe-v-wade")!)
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
    Roe()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
