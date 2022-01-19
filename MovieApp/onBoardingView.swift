//
//  onBoardingView.swift
//
//  Created by Yuru Zhou on 3/22/21.
//

import SwiftUI

struct onBoardingView: View {
    //MARK: - PROPERTIES
    var movies:[Movie] = popularMovieData
    //MARK: - BODY
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            TabView{
                ForEach(0..<movies.count-1){index in
                    MovieCardView(movie: movies[index])
                }//:Loop
                onBoardCardView(movie: movies[movies.count - 1])
            }//: TabView
            .tabViewStyle(PageTabViewStyle()).padding(.vertical, 20)
        }
    }
}
//MARK: - PREVIEW
struct onBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingView(movies:popularMovieData)
    }
}
