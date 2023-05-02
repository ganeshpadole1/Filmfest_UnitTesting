//
//  LibraryViewControllerTest.swift
//  Filmfest_UnitTestingTests
//
//  Created by Ganesh on 02/05/23.
//

import XCTest
@testable import Filmfest_UnitTesting

class LibraryViewControllerTest: XCTestCase {
    
    var sut: LibraryViewController!
    
    override func setUpWithError() throws {
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LibraryViewController") as? LibraryViewController
        sut.loadViewIfNeeded()
    }
    
    override func tearDownWithError() throws {
        
    }
    
    func testLibraryVC_TableViewNotNil() {
        XCTAssertNotNil(sut.libraryTableView)
    }
    
    func testDataSource_ViewDidLoad_SetsTableViewDataSource() {
        XCTAssertNotNil(sut.libraryTableView.dataSource)
        XCTAssertTrue(sut.libraryTableView.dataSource is MovieLibraryDataService)
    }
    
    func testDelegate_ViewDidLoad_SetsTableViewDelegate() {
        XCTAssertNotNil(sut.libraryTableView.delegate)
        XCTAssertTrue(sut.libraryTableView.delegate is MovieLibraryDataService)
    }
    
    func testDataService_ViewDidLoad_SingleDataSourceObject() {
        XCTAssertEqual(sut.libraryTableView.dataSource is MovieLibraryDataService, sut.libraryTableView.delegate is MovieLibraryDataService)
    }
    
    
    
    
    
}
