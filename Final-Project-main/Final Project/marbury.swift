//
//  marbury.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct marbury: View {
    var body: some View {
        ZStack {
            Color(red: 12/256, green: 36/256, blue: 77/256)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image("mad")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400.0, height: 200.0)
                        .clipped()
                        .offset(y:-10)
                    Text("Marbury vs Madison")
                        .font(Font.custom("PlayfairDisplay-Regular", size:35))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 16)
                    VStack(alignment: .leading) {
                        Text("Marbury v. Madison (1803) was a landmark Supreme Court case that established the principle of judicial review, allowing the Court to strike down laws and actions that are unconstitutional. The case involved William Marbury, who sued for his commission as a justice of the peace after it was withheld. The Court ruled that while Marbury had a right to the commission, the law he used to bring the case was unconstitutional, thus affirming the Court's power to review and invalidate laws.")
                            .font(Font.custom("PlayfairDisplay-Regular", size:17))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 128/256, green: 0/256, blue: 32/256))
                            )
                            .frame(width: 350.0, height: 350.0)
                        // Link below the description
                        Link("More about Marbury v. Madison", destination: URL(string: "https://www.archives.gov/milestone-documents/marbury-v-madison")!)
                            .font(Font.custom("PlayfairDisplay-Regular", size:18))
                            .foregroundColor(.blue)
                            .offset(x:5)
                            .padding(.top, 8)
                    }
                    // .padding()
                    // Spacer()
                }
                // .padding()
            }
        }
    }
}
#Preview {
    marbury()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
