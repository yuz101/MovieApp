//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/23/21.
//

import SwiftUI

struct MovieHeaderView: View {
    var movie: Movie
    var body: some View {
        ZStack {
            Image(movie.image).resizable().scaledToFill().opacity(0.9)
        }.frame(height: 400, alignment: .top).clipped()
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieHeaderView(movie: popularMovieData[0]).previewLayout(.fixed(width: 375, height: 440))
    }
}
