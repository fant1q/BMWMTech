//
//  InfoRow.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 24.05.2023.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
                .padding(.leading, 12)
            
            Text(post.title)

            Spacer()
        }
    }
}


struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: Post.data[0])
    }
}
