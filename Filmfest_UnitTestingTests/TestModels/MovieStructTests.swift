//
//  MovieStructTests.swift
//  Filmfest_UnitTestingTests
//
//  Created by Ganesh on 01/05/23.
//

import XCTest
@testable import Filmfest_UnitTesting

class MovieStructTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInit_MovieWithTitle() {
        let movie = Movie(title: "Generic Blockbuster")
        
        XCTAssertNotNil(movie)
        XCTAssertEqual(movie.title, "Generic Blockbuster")
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let movie = Movie(title: "Romantic Comedy", releaseDate: "1987")
        
        XCTAssertNotNil(movie)
        XCTAssertEqual(movie.title, "Romantic Comedy")
        XCTAssertEqual(movie.releaseDate, "1987")
    }
    
    func testEquatable_ReturnsTrue() {
        let movie1 = Movie(title: "Romantic Comedy")
        let movie2 = Movie(title: "Romantic Comedy")

        XCTAssertEqual(movie1, movie2)
        XCTAssertEqual(movie1.title, movie2.title)
    }
}
