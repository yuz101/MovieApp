//
//  StartButtonView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/22/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: -PROPERTIES
    @AppStorage("onBoarding") var isonBoarding: Bool?
    //MARK: -BODY
    var body: some View {
        Button(action: {
           isonBoarding = false
        }){
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle").imageScale(.large)
            }.padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25)).shadow(color: .white, radius: 10, x: 0.0, y: 0.0)
        } //: BUTTON
        .accentColor(Color.white)
    }
}
//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
