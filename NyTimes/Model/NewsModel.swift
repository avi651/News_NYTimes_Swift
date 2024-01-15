//
//  NewsModel.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import Foundation

// MARK: - NewsResult

struct NewsResponse: Codable {
    let data: NewsResult
}

struct NewsResult: Codable {
    let results: [News]
}

// MARK: - Result
struct News: Codable, Identifiable {
    let uri: String
    let url: String
    let id, assetID: Int
    let publishedDate, updated, section, subsection: String
    let nytdsection, adxKeywords: String
    let byline: String
    let etaID: Int

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case byline
        case etaID = "eta_id"
    }
}
