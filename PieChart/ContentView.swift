//
//  ContentView.swift
//  PieChart
//
//  Created by Sandra Gomez on 4/11/24.
//

import SwiftUI
import Charts

struct SalesPeople: Identifiable {
    var name: String
    var sales: Int
    var id: String {name}
}

var mySalesArray: [SalesPeople] = [
    .init(name: "Oscar", sales: 50),
    .init(name: "Meyer", sales: 43),
    .init(name: "George", sales: 62),
    .init(name: "Hormel", sales: 26)
]

struct ContentView: View {
    var body: some View {
        Chart(mySalesArray) { z in
            SectorMark(
                angle: .value("Sales", z.sales)
            )
            .foregroundStyle(by: .value("Name", z.name))
        } .padding()
    }
}
                

#Preview {
    ContentView()
}
