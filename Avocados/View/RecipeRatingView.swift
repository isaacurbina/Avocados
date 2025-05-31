//
//  RatingView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/31/25.
//

import SwiftUI

struct RecipeRatingView: View {
	
	
	// MARK: - properties
	
	var recipe: Recipe
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .center, spacing: 5) {
			ForEach(1...(recipe.rating), id: \.self) { _ in
				Image(systemName: "star.fill")
					.font(.body)
					.foregroundColor(.yellow)
			}
		} // HStack
	}
}


// MARK: - preview

#Preview {
	RecipeRatingView(recipe: recipesData[0])
		.previewLayout(.fixed(width: 320, height: 60))
}
