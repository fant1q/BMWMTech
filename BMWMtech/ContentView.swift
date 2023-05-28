//
//  ContentView.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 23.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            InfoView()
                .tabItem {
                    Label("Auto", systemImage: "m.square.fill")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "h.square.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
