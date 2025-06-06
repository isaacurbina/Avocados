//
//  ContentView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/22/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - properties
	
	var headers: [Header] = headersData
	var facts: [Fact] = factsData
	var recipes: [Recipe] = recipesData
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 20) {
				
				
				// MARK: - header
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(alignment: .top, spacing: 0) {
						ForEach(headers) { item in
							HeaderView(header: item)
						}
					}
				}
				
				
				// MARK: - dishes
				
				Text("Avocado Dishes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				DishesView()
					.frame(maxWidth: 640)
				
				
				// MARK: - avocado facts
				
				Text("Avocado Facts")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(alignment: .top, spacing: 60) {
						ForEach(facts) { item in
							FactsView(fact: item)
						}
					} // HStack
					.padding(.vertical)
					.padding(.leading, 60)
					.padding(.trailing, 20)
				} // ScrollView
				
				
				// MARK: - recipe cards
				
				Text("Avocado Recipes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				VStack(alignment: .center, spacing: 20) {
					ForEach(recipes) { item in
						RecipeCardView(recipe: item)
					} // ForEach
				} // VStack
				.frame(maxWidth: 640)
				.padding(.horizontal)
				
				
				// MARK: - footer
				
				VStack(alignment: .center, spacing: 20) {
					
					Text("All About Avocados")
						.fontWeight(.bold)
						.modifier(TitleModifier())
					
					Text("Everything you wanted to know about avocados but were too afraid to ask.")
						.font(.system(.body, design: .serif))
						.multilineTextAlignment(.center)
						.foregroundColor(.gray)
						.frame(minHeight: 60)
					
				} // VStack
				.frame(maxWidth: 640)
				.padding()
				.padding(.bottom, 85)
				
			} // VStack
		} // ScrollView
		.edgesIgnoringSafeArea(.all)
		.padding(0)
	}
}


// MARK: - modifier

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(.title, design: .serif))
			.foregroundColor(Color("ColorGreenAdaptive"))
			.padding(8)
	}
}


// MARK: - preview

#Preview {
	ContentView(
		headers: headersData,
		facts: factsData,
		recipes: recipesData
	)
}
