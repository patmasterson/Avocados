//
//  FactModel.swift
//  Avocados
//
//  Created by Patrick Masterson on 10/22/22.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String 
}
