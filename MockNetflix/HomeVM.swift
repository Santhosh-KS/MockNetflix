//
//  HomeVM.swift
//  MockNetflix
//
//  Created by Santhosh K S on 17/01/21.
//

import Foundation


class HomeVM : ObservableObject {
  // string == Category
  @Published var movies: [String: [Movie]] = [:]
  
  public var allCategories: [String] {
     movies.keys.map { String($0) }
  }
  
  public func getMovie(forCategory cat: String) -> [Movie] {
    movies[cat] ?? []
  }
  
  init() {
    setupMovies()
  }
  
  func setupMovies() {
    movies["Trending Now"] = exampleMovies
    movies["Stand-Up Comedy"] = exampleMovies.shuffled()
    movies["Relesing Now"] = exampleMovies.shuffled()
    movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    movies["Comedies"] = exampleMovies.shuffled()
  }
}
