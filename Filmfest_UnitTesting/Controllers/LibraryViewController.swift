//
//  ViewController.swift
//  Filmfest_UnitTesting
//
//  Created by Ganesh on 01/05/23.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryTableView: UITableView!
    @IBOutlet var dataService: MovieLibraryDataService!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
        print("View Controller initialized")
    }
    
    deinit {
        print("deinit called")
    }
}

