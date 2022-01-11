//
//  MovieCardView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/18/21.
//

import SwiftUI

struct MovieCardView: View {
    //MARK: - Properties
    var movie: Movie
    @State private var isAnimating: Bool = false
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack() {
                Spacer()
                //Movie button start
                StartButtonView().padding().background(Color.black).blendMode(.screen)
            }//: VStack
        }//: ZStack
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .center)
        .background(Image(movie.image).resizable().scaledToFill()   ).cornerRadius(20).padding(.horizontal, 10)
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: popularMovieData[2]).previewLayout(.fixed(width: 320, height: 640))
    }
}
