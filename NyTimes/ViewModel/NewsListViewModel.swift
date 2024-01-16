//
//  NewsListViewModel.swift
//  NyTimes
//
//  Created by Avinash on 17/01/24.
//

import Foundation

class NewsListViewModel: ObservableObject {
    @Published var news: [News] = [News]()
    @Published var state: FetchState = .good
    
    let service: NewsDataProtocol
    
    init(service: NewsDataProtocol = NewsData()) {
        self.service = service
        fetchNewsData()
    }
    
    internal func loadMore() {
        
    }
    
    private func fetchNewsData() {
        guard state == FetchState.good else {
            return
        }
        
        state = .isLoading
        
        service.fetchNewsData { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let results):
                    self?.news = results.results
                    if results.results.count == 0 {
                        self?.state = .noResults
                    } else {
                        self?.state = .good
                    }
                    
                    print("fetched News \(results.results.count)")
                    
                case .failure(let error):
                    print("error loading movies: \(error)")
                    self?.state = .error(error.localizedDescription)
                }
            }
        }
    }
}

