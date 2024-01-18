//
//  NewsTableViewCard.swift
//  NyTimes
//
//  Created by Avinash on 18/01/24.
//

import SwiftUI

struct NewsTableViewCard: View {
    
    public let news: News
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    
                }
                VStack(){
                    Text(news.title).font(.custom("Roboto-Black", size: 12)).lineLimit(1)
                    Spacer()
                    Text(news.adxKeywords).font(.custom("Roboto-Regular", size: 14)).lineLimit(3)
                }
            }
        }.frame(minWidth: 0, maxWidth: .infinity).padding(16)
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
            .shadow(radius: 8)
    }
}

