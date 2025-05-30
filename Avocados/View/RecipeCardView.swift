//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/30/25.
//

import SwiftUI

struct RecipeCardView: View {
	
	
	// MARK: - properties
	
	var recipe: Recipe
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .leading, spacing: 0) {
			
			
			// MARK: - card image
			
			Image(recipe.image)
				.resizable()
				.scaledToFit()
				.overlay(
					HStack {
						Spacer()
						VStack {
							Image(systemName: "bookmark")
								.font(.title.weight(.light))
								.foregroundColor(.white)
								.imageScale(.small)
								.shadow(
									color: Color("ColorBlackTransparentLight"),
									radius: 2,
									x: 0,
									y: 0
								)
								.padding(.trailing, 20)
								.padding(.top, 22)
							Spacer()
						} // VStack
					} // HStack
				)
			
			VStack(alignment: .leading, spacing: 12) {
				
				
				// MARK: - title
				
				Text(recipe.title)
					.font(.system(.title, design: .serif))
					.fontWeight(.bold)
					.foregroundColor(Color("ColorGreenMedium"))
					.lineLimit(1)
				
				
				// MARK: - headline
				
				Text(recipe.headline)
					.font(.system(.body, design: .serif))
					.foregroundColor(.gray)
					.italic()
				
				
				// MARK: - rates
				
				HStack(alignment: .center, spacing: 5) {
					ForEach(1...(recipe.rating), id: \.self) { _ in
						Image(systemName: "star.fill")
							.font(.body)
							.foregroundColor(.yellow)
					}
				} // HStack
				
				
				// MARK: - cooking
				
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
				
			} // VStack
			.padding()
			.padding(.bottom, 12)
			
		} // VStack
		.background(.white)
		.cornerRadius(12)
		.shadow(
			color: Color("ColorBlackTransparentLight"),
			radius: 9,
			x: 0,
			y: 0
		)
	}
}

#Preview {
	RecipeCardView(recipe: recipesData[0])
		.previewLayout(.sizeThatFits)
}
