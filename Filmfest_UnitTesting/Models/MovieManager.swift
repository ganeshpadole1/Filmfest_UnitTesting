//
//  MovieManager.swift
//  Filmfest_UnitTesting
//
//  Created by Ganesh on 01/05/23.
//

import Foundation

class MovieManager {
    var moviesToSeeCount = 0
    var moviesSeenCount = 0
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovie(movie: Movie) {
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        
        guard index < moviesToSeeCount else { return }
        moviesToSeeCount -= 1
        moviesSeenCount += 1
        
        let movie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(movie)
    }
    
    func checkedOffMovieAtIndex(index: Int) -> Movie {
        return moviesSeenArray[index]
    }
}
