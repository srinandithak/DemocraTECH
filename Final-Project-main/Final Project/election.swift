//
//  election.swift
//  Final Project
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct election: View {
    var body: some View {
        ZStack {
            Color.blueBackground
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    // Title
                    Text("Presidential\nCandidates")
                        .font(Font.custom("PlayfairDisplay-Bold", size:24))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top, 40)
                        .frame(maxWidth: .infinity, alignment: .center)
                    // First person
                    candidateView(name: "Donald Trump", imageName: "DT", links: [
                        ("About Trump", URL(string: "https://trumpwhitehouse.archives.gov/people/donald-j-trump/")!),
                        ("Republican Policies", URL(string: "https://gop.com/about-our-party/")!)
                    ])
                    // Second person
                    candidateView(name: "Kamala Harris", imageName: "KH", links: [
                        ("About Harris", URL(string: "https://www.whitehouse.gov/administration/vice-president-harris/")!),
                        ("Democratic Policies", URL(string: "https://democrats.org/where-we-stand/party-platform/")!)
                    ])
                }
                .padding(.horizontal, 20)
            }
        }
    }
      private func candidateView(name: String, imageName: String, links: [(String, URL)]) -> some View {
        VStack(spacing: 15) {
          Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 180, height: 180)
            .shadow(radius: 10)
          VStack(spacing: 8) {
            Text(name)
                  .font(Font.custom("PlayfairDisplay-Regular", size:18))
              .foregroundColor(.white)
              .multilineTextAlignment(.center)
            ForEach(links, id: \.0) { link in
              Link(link.0, destination: link.1)
                .foregroundColor(.blueBackground)
                .underline()
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.custom("PlayfairDisplay-Regular", size:20))
            }
          }
          .padding()
          .background(
            RoundedRectangle(cornerRadius: 12)
              .fill(Color.burgundy)
              .shadow(radius: 10)
          )
          .padding(.horizontal, 15)
          .padding(.vertical, 3)
        }
      }
    }
    
    extension Color {
      static let burgundy = Color(red: 0.5, green: 0.0, blue: 0.0)
      static let blueBackground = Color(red: 12/256, green: 36/256, blue: 77/256)
    }

#Preview {
    election()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
