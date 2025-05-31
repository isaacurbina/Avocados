//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/31/25.
//

import SwiftUI

struct RecipeDetailView: View {
	
	
	// MARK: - properties
	
	var recipe: Recipe
	@State private var pulsate: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack (alignment: .center, spacing: 0){
				Image(recipe.image)
					.resizable()
					.scaledToFit()
				
				Group {
					VStack {
						
						// title
						
						Text(recipe.title)
							.font(.system(.largeTitle, design: .serif))
							.fontWeight(.bold)
							.multilineTextAlignment(.center)
							.foregroundColor(Color("ColorGreenAdaptive"))
							.padding(.top, 10)
						
						// rating
						
						RecipeRatingView(recipe: recipe)
						
						// cooking
						
						RecipeCookingView(recipe: recipe)
						
						// ingredients
						
						Text("Ingredients")
							.fontWeight(.bold)
							.modifier(TitleModifier())
						
						VStack(alignment: .leading, spacing: 5) {
							ForEach(recipe.ingredients, id: \.self) { item in
								VStack(alignment: .leading, spacing: 5) {
									Text(item)
										.font(.footnote)
										.multilineTextAlignment(.leading)
									Divider()
								} // VStack
							} // ForEach
						} // VStack
						
						// instructions
						
						Text("Instructions")
							.fontWeight(.bold)
							.modifier(TitleModifier())
						
						ForEach(recipe.instructions, id: \.self) { item in
							VStack(alignment: .center, spacing: 5) {
								Image(systemName: "chevron.down.circle")
									.resizable()
									.frame(width: 42, height: 42, alignment: .center)
									.imageScale(.large)
									.font(.title.weight(.ultraLight))
									.foregroundColor(Color("ColorGreenAdaptive"))
								
								Text(item)
									.lineLimit(nil)
									.multilineTextAlignment(.center)
									.font(.system(.body, design: .serif))
									.frame(minHeight: 100)
							} // VStack
						} // ForEach
					} // VStack
					
				} // Group
				.padding(.horizontal, 24)
				.padding(.vertical, 12)
				
			} // VStack
		} // ScrollView
		.edgesIgnoringSafeArea(.all)
		.overlay(
			HStack {
				Spacer()
				VStack {
					Button(action: {
						// action
					}, label: {
						Image(systemName: "chevron.down.circle.fill")
							.font(.title)
							.foregroundColor(.white)
							.shadow(radius: 4)
							.opacity(pulsate ? 1 : 0.6)
							.scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
							.animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
					})
					.padding(.trailing, 20)
					.padding(.top, 24)
					
					Spacer()
				} // VStack
			} // HStack
		)
		.onAppear {
			pulsate.toggle()
		}
	}
}


// MARK: - preview

#Preview {
	RecipeDetailView(recipe: recipesData[0])
}
