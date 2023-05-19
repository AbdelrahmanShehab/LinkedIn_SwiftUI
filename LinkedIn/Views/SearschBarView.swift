//
//  SearschBarView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct SearschBarView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("demo")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            // MARK: -  SEARCH BAR
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.gray.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                )
            
            // MARK: -  Message Box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .trailing)
        }//: HSTACK
        .padding(.top)
    }
}

struct SearschBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearschBarView()
    }
}
