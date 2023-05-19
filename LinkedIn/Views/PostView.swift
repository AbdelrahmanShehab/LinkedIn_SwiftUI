//
//  PostView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct PostView: View {
    // MARK: -  PROPERTIES
    var posts: [PostModel] = postData
    
    // MARK: -  BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 5) {
                ForEach(posts, id: \.id) { post in
                    PostCardView(post: post)
                    HStack(alignment: .center, spacing: 30) {
                        ForEach(socialData, id: \.id) { post in
                            VStack {
                                Image(systemName: post.image)
                                Text("\(post.title)")
                            }//: VSTACK
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }//: LOOP
                        .padding(.horizontal)
                    }//: HSTACK
                }//: LOOP
            }//: VSTACK
        }//: SCROLL
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
