//
//  InfoDetails.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 24.05.2023.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(post.subtitle)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Divider()
                
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}

struct InfoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: Post.data[0])
    }
}
