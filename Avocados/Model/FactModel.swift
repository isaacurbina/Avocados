//
//  FactModel.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/30/25.
//

import SwiftUI

struct Fact: Identifiable {
	var id = UUID()
	var image: String
	var content: String
}
