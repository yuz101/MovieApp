//
//  MovieCardView.swift
//
//  Created by Yuru Zhou on 3/18/21.
//

import SwiftUI

struct MovieCardView: View {
    //MARK: - Properties
    var movie: Movie
    //MARK: - Body
    var body: some View {
        ZStack {
            Image(movie.image).resizable().scaledToFill()
        }//: ZStack
        
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: popularMovieData[0]).previewLayout(.fixed(width: 320, height: 640))
    }
}
