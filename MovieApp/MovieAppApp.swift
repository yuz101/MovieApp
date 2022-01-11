//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by Yuru Zhou on 1/9/22.
//

import SwiftUI

@main
struct MovieAppApp: App {
    @AppStorage("onBoarding") var isonBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isonBoarding{
                onBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
