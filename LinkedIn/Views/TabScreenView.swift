//
//  TabScreenView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreenView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
            
        }//: TAB VIEW
    }
}

struct TabScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
