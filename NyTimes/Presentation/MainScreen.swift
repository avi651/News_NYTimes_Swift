//
//  MainScreen.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView{
            NewsScreen().tabItem {
                VStack{
                    Image(systemName: "newspaper")
                    Text("News")
                }
            }.tag(0)
            
            NewsSearchScreen().tabItem {
                VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }.tag(1)
        }
    }
}

#Preview {
    MainScreen()
}
