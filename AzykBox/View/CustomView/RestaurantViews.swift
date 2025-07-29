//
//  HomeView.swift
//  AzykBox
//
//  Created by Шермат Эшеров on 27/7/25.
//

import SwiftUI

struct RestaurantViews: View {
    @Environment(\.dismiss) var dismiss
    var rows = [1, 1, 1, 1, 1, 1]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(0..<10) { item in
                    FoodViewCell()
                        .listRowSeparator(.hidden)
                }
            }.listStyle(PlainListStyle())
            
        }.navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("category")
                        .font(.headline)
                }
            }
            .toolbarBackground(.white, for: .navigationBar)
    }
}

#Preview {
    RestaurantViews()
}
