//
//  NewsDataProtocol.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import Foundation

protocol NewsDataProtocol {
    func fetchNewsData(completion: @escaping(Result<NewsResult, APIError>) -> Void)
}
