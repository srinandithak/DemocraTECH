//
//  Representatives.swift
//  Final Project
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct Representatives: View {
    @State var reps = ["78726":"Lloyd Doggett", "75035":"Pat Fallon","60490":"Lauren Underwood"]
    @State var rep: String = ""
    @State var text: String = ""
    var body: some View {
        ZStack {
            Color(red:12/256, green:36/256, blue:77/256)
                .ignoresSafeArea()
            
            VStack{
                Text("Representative Finder")
                    .font(Font.custom("PlayfairDisplay-Bold", size:40))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    
                //Text field to enter zip code
                TextField("Enter your Zip Code here", text: $text)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height:70)
                    .background(Color(red:101/256, green:139/256, blue:188/256))
                    .cornerRadius(10)
                    .padding(.all, 20.0)
                Link("Submit", destination: URL(string: "https://ziplook.house.gov/htbin/findrep_house?ZIP=\(text)")!)
                .frame(width: 200, height:70)
                .background(Color(red:125/256, green: 0/256, blue: 17/256))
                .cornerRadius(15)
                .foregroundColor(Color.white)
                Image("usa")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(height: 220)
                  .frame(maxWidth: .infinity)
                  .offset(y:140)
            }
        }
    }
    
}
#Preview {
    Representatives()
        .toolbarBackground(
            .hidden, for: .navigationBar)
}
