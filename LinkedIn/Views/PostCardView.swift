//
//  PostCardView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct PostCardView: View {
    // MARK: -  PROPERY
    var post: PostModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            HStack(alignment: .center, spacing: 5) {
                Image(post.profileImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.title3)
                    Text("\(post.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }//: VSTACK
                Spacer()
                Image(systemName: "ellipsis")
            }//: HSTACK
            .padding(.horizontal)
            
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
                .font(.body)
                .padding(.horizontal, 5)
            Image(post.image)
                .resizable()
                .scaledToFit()
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }//: VSTACK
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: PostModel(id: 1, image: "02", title: "Hitesh Choudhary", followers: 5, profileImage: "1"))
    }
}
