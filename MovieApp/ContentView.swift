//
//  ContentView.swift
//  MovieApp
//
//  Created by Yuru Zhou on 1/9/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var popularMovies:[Movie] = popularMovieData
    var actionMovies:[Movie] = actionMovieData
    var romaticMovies:[Movie] = romanticMovieData
    var scifiMovies:[Movie] = scifiMovieData
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    MovieHeaderView(movie: popularMovies[0])
                    VStack(alignment:.leading){
                            Group{
                                Text("Popular Movies").font(.title).fontWeight(.bold).foregroundColor(.white)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(popularMovies) { movie in
                                            NavigationLink(
                                                destination: MovieDetailView(movie: movie)){
                                                MovieGridItemView(movie: movie)
                                            }
                                        }
                                    }
                                }
                            }
                            Group {
                                Text("Action Movies").font(.title).fontWeight(.bold).foregroundColor(.white)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(actionMovies) { movie in
                                          NavigationLink(destination: MovieDetailView(movie: movie)) {
                                                MovieGridItemView(movie: movie)
                                          } //: LINK
                                        }
                                    }
                                }
                            }
                            Group {
                                Text("Romantic Movies").font(.title).fontWeight(.bold).foregroundColor(.white)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(romaticMovies) { movie in
                                          NavigationLink(destination: MovieDetailView(movie: movie)) {
                                                MovieGridItemView(movie: movie)
                                          } //: LINK
                                        }
                                    }
                                }
                            }
                            Group {
                                Text("Sci-Fi Movies").font(.title).fontWeight(.bold).foregroundColor(.white)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(scifiMovies) { movie in
                                          NavigationLink(destination: MovieDetailView(movie: movie)) {
                                                MovieGridItemView(movie: movie)
                                          } //: LINK
                                        }
                                    }
                                }
                            }
                    }
                }.edgesIgnoringSafeArea(.all)
            }
        }
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
