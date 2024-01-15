//
//  NewsData.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import Foundation

class NewsData: NewsDataProtocol {
    public func fetchNewsData(completion: @escaping (Result<NewsResult, APIError>) -> Void) {
        let url = getNewsData()
        URLServices.fetch(type: NewsResult.self, url: url, httpMethod: "GET", completion: completion)
    }
    
    private func getNewsData() -> URL? {
        let baseURL = "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=R2VHrCd97aefx3LKGH18LXGQPsknaKJ9"
        let components = URLComponents(string: baseURL)
        return components?.url
    }
}
