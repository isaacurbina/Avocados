//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/31/25.
//

import SwiftUI

struct RecipeCookingView: View {
	
	
	// MARK: - properties
	
	var recipe: Recipe
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .center, spacing: 12) {
			
			HStack(alignment:.center, spacing: 2) {
				Image(systemName: "person.2")
				Text("Serves: \(recipe.serves)")
			} // HStack
			
			HStack(alignment:.center, spacing: 2) {
				Image(systemName: "clock")
				Text("Prep: \(recipe.preparation)")
			} // HStack
			
			HStack(alignment:.center, spacing: 2) {
				Image(systemName: "flame")
				Text("Cooking: \(recipe.cooking)")
			} // HStack
			
		} // HStack
		.font(.footnote)
		.foregroundColor(.gray)
	}
}


// MARK: - preview

#Preview {
	RecipeCookingView(recipe: recipesData[0])
		.previewLayout(.fixed(width: 320, height: 60))
}
