//
//  NyTimesTests.swift
//  NyTimesTests
//
//  Created by Avinash on 15/01/24.
//

import Foundation
import XCTest
@testable import NyTimes

final class NyTimesTests: XCTestCase {
    func test_NewsApiResource_With_ValidRequest_Returns_Response() {
        //ARRANGE
        let expectation = self.expectation(description: "ValidRequest_Returns_NewsResponse")
        
        let handler = NewsData()
        handler.fetchNewsData { (result) in
            XCTAssertNotNil(result)
            let _ = result.map { value in
                XCTAssertEqual(100000009260817, value.results.first?.id ?? 0)
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 20, handler: nil)
    }
    
    func test_NewsApiResource_With_ValidRequest_Returns_NotEqualResponse(){
        // ARRANGE
        let expectation = self.expectation(description: "ValidRequest_Returns_NotEqualResponse")
        
        let handler = NewsData()
        
        handler.fetchNewsData { (result) in
            XCTAssertNotNil(result)
            let _ = result.map { value in
                XCTAssertNotEqual(2323, value.results.first?.id ?? 0)
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 20, handler: nil)
    }
}
