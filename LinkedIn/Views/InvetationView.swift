//
//  InvetationView.swift
//  LinkedIn
//
//  Created by Abdelrahman Shehab on 02/05/2023.
//

import SwiftUI

struct InvetationView: View {
    // MARK: -  PROPERTY
    var network: NetworkModel
    
    // MARK: -  BODY
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(network.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(network.name)
                    .font(.title3)
                Text(network.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("⚭ \(network.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }//: VSTACK
            .frame(width: 150, height: 20, alignment: .leading)
            
            HStack {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
            }//: HSTACK
            .padding(.horizontal)
        }//: HSTACK
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal)
    }
}

// MARK: -  PREVIEW
struct InvetationView_Previews: PreviewProvider {
    static var previews: some View {
        InvetationView(network: NetworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01"))
    }
}
