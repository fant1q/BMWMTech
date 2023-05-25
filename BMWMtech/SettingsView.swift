//
//  SettingsView.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 24.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var linkOn = false
    @State private var toggler = true
    
    @State private var sliderValue = 25.0
    @State private var isChanging = false
    
    private var array = ["1", "2", "3"]
    @State private var selectedIndex = 0
    
    var body: some View {
        ZStack {
            Form {
                Section {
                    Toggle("Some toggle", isOn: $linkOn)
                    
                    Text("Hello")
                        .padding(26)
                }
                Section {
                    Slider(value: $sliderValue, in: 0...100)
                    
                    Picker(selection: $selectedIndex, label: Text("Select Number")) {
                        ForEach(0 ..< array.count) {
                            Text(self.array[$0])
                        }
                  }
                    .padding(26)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
