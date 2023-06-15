//
//  Stats.swift
//  BMWMtech
//
//  Created by Денис Штоколов on 24.05.2023.
//

import SwiftUI
import Charts

struct Stats: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(Post.data) { shape in
                    BarMark(
                        x: .value("Shape Type", shape.acceleration),
                        y: .value("Total Count", shape.title)
                    )
                    .foregroundStyle(by: .value("Shape Color", shape.title))
                }
            }
            .chartForegroundStyleScale([
                "BMW M2 Coupe": .cyan,
                "BMW M3 Competition": .indigo,
                "BMW M4 Coupe": .green,
                "BMW M5 Competition": .red,
                "BMW M760Li xDrive": .gray,
                "BMW М8 Gran Coupe": .brown,
                "BMW X5 M Competition": .blue,
                "BMW X6 M Competition": .black
            ])
            
            Text("Разгон 0-100 км/ч, сек")
        }
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
