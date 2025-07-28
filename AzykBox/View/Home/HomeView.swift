//
//  HomeView.swift
//  AzykBox
//
//  Created by Шермат Эшеров on 27/7/25.
//

import SwiftUI

struct HomeView: View {
    var rows = [1, 1, 1, 1, 1, 1]
    var body: some View {
        NavigationView{
            List {
                ForEach(rows, id:\.self) { row in
                    FoodViewCell()
                        .listRowSeparator(.hidden)
                }
            }.listStyle(PlainListStyle())
        
        }.navigationTitle("Home")
    }
}

#Preview {
    HomeView()
}
