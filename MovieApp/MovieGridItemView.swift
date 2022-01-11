//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct MovieGridItemView: View {
  // MARK: - PROPERTIES
  
  let movie: Movie

  // MARK: - BODY

  var body: some View {
    Image(movie.image)
      .resizable()
      .scaledToFill()
        .cornerRadius(12).frame(height: 200, alignment: .center)
  }
}

// MARK: - PREVIEW

struct MovieGridItemView_Previews: PreviewProvider {
  
  static var previews: some View {
    MovieGridItemView(movie: popularMovieData[3])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
