//
//  resources.swift
//  Final Project
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct resources: View {
    var body: some View {
        ZStack {
              Color.navyBlue
                .edgesIgnoringSafeArea(.all)
              VStack(spacing: 40) {
                Text("Resources")
                      .font(Font.custom("PlayfairDisplay-Bold",size:34))
                  .foregroundColor(.white)
                  .padding(.top, 40)
                VStack(spacing: 30) {
                  ResourceBox(title: "Government Branches", link: "https://www.usa.gov/branches-of-government")
                  ResourceBox(title: "Register to Vote", link: "https://vote.gov")
                  ResourceBox(title: "Voting Process", link: "https://education.nationalgeographic.org/resource/resource-library-voting-process/")
                }
                .padding(.horizontal, 20)
                Spacer()
                Image("usa")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(height: 220)
                  .frame(maxWidth: .infinity)
              }
              .padding(.bottom, -28)
            }
          }
        }
        struct ResourceBox: View {
          var title: String
          var link: String
          var body: some View {
            VStack(alignment: .leading, spacing: 15) {
              Text(title)
                    .font(Font.custom("PlayfairDisplay-Bold", size:20))
                .foregroundColor(.white)
              Link(destination: URL(string: link)!) {
                Text("Click here for more info")
                      .font(Font.custom("PlayfairDisplay-Regular",size:16))
                  .foregroundColor(.white)
                  .underline()
              }
            }
            .padding()
            .background(Color.burgundy)
            .cornerRadius(12)
            .shadow(radius: 5)
            .frame(maxWidth: .infinity)
          }
        }
        extension Color {
          static let navyBlue = Color(red: 12 / 255, green: 36 / 255, blue: 77 / 255)
            //static let burgundy = Color(red: 128 / 255, green: 0 / 255, blue: 32 / 255)
        }

#Preview {
    resources()
}
