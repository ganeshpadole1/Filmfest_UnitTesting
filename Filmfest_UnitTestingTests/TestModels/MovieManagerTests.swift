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
    
    let scifiMovie = Movie(title: "Sci-Fi")
    let actionMovie = Movie(title: "Action/drama")
    let comedyMovie = Movie(title: "Comedy")
    
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
        sut.addMovie(movie: comedyMovie)
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnsMovieAtIndex() {
        sut.addMovie(movie: actionMovie)
        
        let movieQuired = sut.movieAtIndex(index: 0)
        XCTAssertEqual(actionMovie.title, movieQuired.title)
    }
    
    //MARK: CheckOff
    
    func testCheckOffMovie_UpdatesMovieManagerCount() {
        sut.addMovie(movie: scifiMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOffMovie_RemovesMovieFromArray() {
        sut.addMovie(movie: actionMovie)
        sut.addMovie(movie: scifiMovie)
        
        sut.checkOffMovieAtIndex(index: 0)
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, scifiMovie.title)
    }
    
    func testCheckOffMovie_ReturnsMovieAtIndex() {
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        let movieQuired = sut.checkedOffMovieAtIndex(index: 0)
        XCTAssertEqual(actionMovie.title, movieQuired.title)
    }
    
    func testClearArrays_ReturnsArrayCountZero() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
        XCTAssertEqual(sut.moviesSeenCount, 1)
        
        sut.clearArrays()
        XCTAssertEqual(sut.moviesSeenCount, 0)
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testCheckDuplicateMovie_ShouldNotBeAddedToArray() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: scifiMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
}
