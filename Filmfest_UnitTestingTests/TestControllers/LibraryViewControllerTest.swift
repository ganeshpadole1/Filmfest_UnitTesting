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
        sut.loadView()
    }

    override func tearDownWithError() throws {
       
    }
    
    func testLibraryVC_TableViewNotNil() {
        XCTAssertNotNil(sut.libraryTableView)    }
}
