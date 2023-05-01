//
//  MovieManagerTests.swift
//  Filmfest_UnitTestingTests
//
//  Created by Ganesh on 01/05/23.
//

import XCTest
@testable import Filmfest_UnitTesting

class MovieManagerTests: XCTestCase {

    var sut: MovieManager!
    
    override func setUpWithError() throws {
       sut = MovieManager()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func testInit_MoviesToSee_ReturnZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testInit_MoviesSeen_ReturnZero() {
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    func testAdd_MoviesToSee_ReturnOne() {
        let testMovie = Movie(title: "Comedy")
        
        sut.addMovie(movie: testMovie)
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
}
