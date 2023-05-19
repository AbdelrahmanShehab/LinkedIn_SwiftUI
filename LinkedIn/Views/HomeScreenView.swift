//
//  HomeScreenView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileAndPostView()
            PostView()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
