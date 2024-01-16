//
//  NewsScreen.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import SwiftUI

struct NewsScreen: View {
    @StateObject var newsListViewModel = NewsListViewModel()
    var body: some View {
        Text(newsListViewModel.news.first?.uri ?? "")
    }
}

#Preview {
    NewsScreen()
}
