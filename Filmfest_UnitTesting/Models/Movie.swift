//
//  Movie.swift
//  Filmfest_UnitTesting
//
//  Created by Ganesh on 01/05/23.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
