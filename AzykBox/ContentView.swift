//
//  ContentView.swift
//  AzykBox
//
//  Created by Шермат Эшеров on 27/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Home View
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }

            // Favorite View
            NavigationStack {
                FavoriteView()
            }
            .tabItem {
                Image(systemName: "heart")
                Text("Favorites")
            }

            // Profile View
            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

#Preview {
    ContentView()
}
