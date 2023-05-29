//
//  InfoView.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 23.05.2023.
//

import SwiftUI

struct InfoView: View {
    @AppStorage("titleOnInfo") var titleOnInfo = false
    
    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationTitle(self.titleOnInfo ? "BMW M series" : "")
            .listStyle(.plain)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
