//
//  onBoardCardView.swift
//  MovieApp
//
//  Created by Yuru Zhou on 1/16/22.
//

import SwiftUI

struct onBoardCardView: View {
    var movie: Movie
    var body: some View {
        ZStack {
            Image(movie.image).resizable().scaledToFill()
            VStack() {
                Spacer()
                //Movie button start
                StartButtonView().padding(50)
            }//: VStack
        }//: ZStack
    }
}

struct onBoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardCardView(movie: popularMovieData[2]).previewLayout(.fixed(width: 320, height: 640))
    }
}

