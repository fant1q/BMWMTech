//
//  SettingsView.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 24.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var toggler = false
    @State private var sliderValue = 25.0
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    
    private let array = ["1", "2", "3"]
    @State private var selectedIndex = 0
    @AppStorage("titleOnInfo") var titleOnInfo = false
    
    var body: some View {
        ZStack {
            Form {
                Section {
                    Toggle("Title toggle", isOn: $toggler.animation())
                        .onChange(of: toggler) { on in
                            if on  {
                                titleOn.toggle()
                                titleOnInfo = titleOn
                            } else {
                                titleOn.toggle()
                                titleOnInfo = titleOn
                            }
                        }
                    
                    if titleOn {
                        Text("Navigation title enabled")
                    }
                    
                    Text( (colorScheme == .dark ? "Dark" : "Light") + " Theme enabled")
                        .padding(26)
                }
                Section {
                    Slider(value: $sliderValue, in: 0...100)
                    
                    Picker(selection: $selectedIndex, label: Text("Select Number")) {
                        ForEach(0 ..< array.count,
                                id: \.self) {
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
        SettingsView(titleOn: .constant(false))
    }
}
