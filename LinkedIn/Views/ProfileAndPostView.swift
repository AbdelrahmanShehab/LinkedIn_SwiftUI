//
//  ProfileAndPostView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearschBarView()
            Divider()
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }//: HSTACK
            .padding(.horizontal)
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("photo")
                Spacer()
                
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("photo")
                
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("photo")
            }//: HSTACK
            .padding(.horizontal)
        }//: VSTACK
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
