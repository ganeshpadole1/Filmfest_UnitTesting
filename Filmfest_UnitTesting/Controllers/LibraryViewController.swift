//
//  ViewController.swift
//  Filmfest_UnitTesting
//
//  Created by Ganesh on 01/05/23.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        print("View Controller initialized")
    }
    
    deinit {
        print("deinit called")
    }
}

