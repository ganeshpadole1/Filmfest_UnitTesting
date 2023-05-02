//
//  MovieManager.swift
//  Filmfest_UnitTesting
//
//  Created by Ganesh on 01/05/23.
//

import Foundation

class MovieManager {
    var moviesToSeeCount: Int {
        return moviesToSeeArray.count
    }
    
    var moviesSeenCount: Int {
        return moviesSeenArray.count
    }
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovie(movie: Movie) {
        
        if !(moviesToSeeArray.contains(movie)) {
            moviesToSeeArray.append(movie)
        }
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        
        guard index < moviesToSeeCount else { return }
        
        let movie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(movie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> Movie {
        return moviesSeenArray[index]
    }
    
    func clearArrays() {
        moviesToSeeArray.removeAll()
        moviesSeenArray.removeAll()
    }
}
