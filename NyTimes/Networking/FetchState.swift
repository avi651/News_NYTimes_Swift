//
//  FetchState.swift
//  NyTimes
//
//  Created by Avinash on 15/01/24.
//

import Foundation

enum FetchState: Comparable {
    case good
    case isLoading
    case loadedAll
    case noResults
    case error(String)
}
