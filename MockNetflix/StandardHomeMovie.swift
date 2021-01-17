//
//  StandardHomeMovie.swift
//  MockNetflix
//
//  Created by Santhosh K S on 17/01/21.
//

import SwiftUI

import Kingfisher

struct StandardHomeMovie: View {
  var movie: Movie
  
    var body: some View {
      KFImage(movie.thumbnailURL)
        .resizable()
        .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
          .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
