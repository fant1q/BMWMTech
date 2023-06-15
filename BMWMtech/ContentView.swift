//
//  ContentView.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 23.05.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("titleOnInfo") var titleOnInfo = false
    
    var body: some View {
        TabView() {
            InfoView(titleOnInfo: titleOnInfo)
                .tabItem {
                    Label("Auto", systemImage: "m.square.fill")
                }
            Stats()
                .tabItem {
                    Label("Stats", systemImage: "car.2.fill")
                }
            SettingsView(titleOn: $titleOnInfo)
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
