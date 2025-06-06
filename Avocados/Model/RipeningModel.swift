//
//  RipeningModel.swift
//  Avocados
//
//  Created by Isaac Urbina on 6/1/25.
//

import SwiftUI

struct Ripening: Identifiable {
	var id = UUID()
	var image: String
	var stage: String
	var title: String
	var description: String
	var ripeness: String
	var instruction: String
}
