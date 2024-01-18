//
//  NewsListView.swift
//  NyTimes
//
//  Created by Avinash on 18/01/24.
//

import SwiftUI

struct NewsTableView: View {
    
    let newsTitle: String
    let newsData: [News]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(newsData){ news in
                    NewsTableViewCard(news: news)
                }
            }
        }
    }
}

#Preview {
    NewsTableView(newsTitle: "", newsData: [])
}
