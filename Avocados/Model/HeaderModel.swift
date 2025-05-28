//
//  HeaderModel.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/28/25.
//

import SwiftUI


// MARK: - header model

struct Header: Identifiable {
	var id = UUID()
	var image: String
	var headline: String
	var subheadline: String
}
