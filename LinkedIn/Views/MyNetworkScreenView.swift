//
//  MyNetworkScreenView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct MyNetworkScreenView: View {
    // MARK: -  PROPERTY
    var networkers: [NetworkModel] = networkData
    
    // MARK: -  BODY
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            SearschBarView()
            
            HStack {
                Text("Manage My Network")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }//: HSTACK
            .padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    HStack {
                     Text("Invetations")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.blue)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }//: HSTACK
                    .padding(.horizontal)
                    Divider()
                    
                    ForEach(networkers, id: \.id) { networker in
                        InvetationView(network: networker)
                        Divider()
                    }
                    
                }//: VSTACK
            }//: SCROLL
        }//: VSTACK
    }
}

// MARK: -  PREVIEW
struct MyNetworkScreenView_Previews: PreviewProvider {
    
    static var previews: some View {
        MyNetworkScreenView()
    }
}
