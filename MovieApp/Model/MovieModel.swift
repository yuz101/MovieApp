//
//  FruitModel.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/22/21.
//

import SwiftUI
//MARK: - FRUITS DATA MODEL
struct Movie: Identifiable{
    var id =  UUID()
    var title: String
    var image: String
    var release_year: String
    var category: String
    var runtime: String
    var description : String
}
