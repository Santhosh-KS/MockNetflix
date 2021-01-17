//
//  HomeView.swift
//  MockNetflix
//
//  Created by Santhosh K S on 17/01/21.
//

import SwiftUI

struct HomeView: View {
  
  var vm = HomeVM()
  
    var body: some View {
      ZStack {
        Color.black.ignoresSafeArea(.all)
        ScrollView(showsIndicators: false){
          LazyVStack {
            ForEach(vm.allCategories, id: \.self) { category in
              VStack {
                HStack {
                  Text(category).bold().font(.title3)
                  Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                  LazyHStack {
                    ForEach(vm.getMovie(forCategory: category)) { movie in
                      StandardHomeMovie(movie: movie)
                        .frame(width: 200, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    }
                  }
                }
              }
            }
          }
        }
      }
      .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
