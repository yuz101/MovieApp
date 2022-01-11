//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct MovieDetailView: View {
    //MARK: - PROPERTIES
    var movie: Movie
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    MovieHeaderView(movie: movie)
                    VStack(alignment: .leading, spacing: 20){
                        //TITLE
                        Text(movie.title).font(.title)
                            .fontWeight(.bold)
                        //SUBHEADING
                        Text("\(movie.release_year)  \(movie.category)  \(movie.runtime)" )
                        //DESCRIPTION
                        Text(movie.description).multilineTextAlignment(.leading)
                    }.padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }.navigationBarTitle(movie.title, displayMode: .inline)
                .navigationBarHidden(true)
            }.edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: PREVIEW
struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: popularMovieData[0])
    }
}
