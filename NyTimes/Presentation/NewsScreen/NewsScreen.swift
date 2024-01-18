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
        NewsTableView(newsTitle: "Ny Times", newsData: newsListViewModel.news)
    }
} 

#Preview {
    NewsScreen()
}
