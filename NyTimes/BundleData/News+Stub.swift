//
//  News+Stub.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import Foundation

//extension Result {
//    static var stubbedNews: [Result] {
//        let response: NewsModel? = try? Bundle.main.loadAndDecodeJSON(filename: "NewsData")
//        return response!.results
//    }
//    
//    static var stubbedMovie: Result {
//        stubbedNews[0]
//    }
//}
//
//extension Bundle {
//    func loadAndDecodeJSON<D: Decodable>(filename: String) throws -> D? {
//        guard let url = self.url(forResource: filename, withExtension: "json") else {
//            return nil
//        }
//        let data = try Data(contentsOf: url)
//        let jsonDecoder = Utils.jsonDecoder
//        let decodedModel = try jsonDecoder.decode(D.self, from: data)
//        return decodedModel
//    }
//}
