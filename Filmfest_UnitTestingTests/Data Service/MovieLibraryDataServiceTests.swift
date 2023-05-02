//
//  MovieLibraryDataServiceTests.swift
//  Filmfest_UnitTestingTests
//
//  Created by Ganesh on 02/05/23.
//

import XCTest
@testable import Filmfest_UnitTesting

class MovieLibraryDataServiceTests: XCTestCase {
    
    var sut: MovieLibraryDataService!
    var libraryTableView: UITableView!
    var movieManager: MovieManager!
    
    let fairyTail = Movie(title: "Fairly Tail")
    let comedy = Movie(title: "Comedy movie")
    let actionDrama = Movie(title: "Action Drama movie")
    
    override func setUpWithError() throws {
        sut = MovieLibraryDataService()
        movieManager = MovieManager()
        sut.movieManager = movieManager
        libraryTableView = UITableView()
        
        libraryTableView.dataSource = sut
        libraryTableView.delegate = sut
    }
    
    override func tearDownWithError() throws {
        
    }
    
    func testTableViewSections_Count_ReturnsTwo() {
       
        let sections = libraryTableView.numberOfSections
        XCTAssertEqual(sections, 2)
    }
    
    func testTableViewSections_SectionOne_ReturnsMoviesToSeeCount() {
        sut.movieManager?.addMovie(movie: fairyTail)
        sut.movieManager?.addMovie(movie: actionDrama)
        
        XCTAssertEqual(libraryTableView.numberOfRows(inSection: 0), 2)
        sut.movieManager?.addMovie(movie: comedy)
        libraryTableView.reloadData()
        XCTAssertEqual(libraryTableView.numberOfRows(inSection: 0), 3)
    }
    
}
