//
//  DishesView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/29/25.
//

import SwiftUI

struct DishesView: View {
	
	
	// MARK: - body
	
	var body: some View {
		HStack(alignment: .center, spacing: 4) {
			
			
			// MARK: - first column
			
			VStack(alignment: .leading, spacing: 4) {
				HStack() {
					Image("icon-toasts")
						.resizable()
						.modifier(IconModifier())
					Spacer()
					Text("Toasts")
				} // HStack
				
				Divider()
				
				HStack() {
					Image("icon-tacos")
						.resizable()
						.modifier(IconModifier())
					Spacer()
					Text("Tacos")
				} // HStack
				
				Divider()
				
				HStack() {
					Image("icon-salads")
						.resizable()
						.modifier(IconModifier())
					Spacer()
					Text("Salads")
				} // HStack
				
				Divider()
				
				HStack() {
					Image("icon-halfavo")
						.resizable()
						.modifier(IconModifier())
					Spacer()
					Text("Spreads")
				} // HStack
				
			} // VStack
			
			
			// MARK: - second column
			
			VStack(alignment: .center, spacing: 16) {
				HStack {
					Divider()
				}
				
				Image(systemName: "heart.circle")
					.font(.title.weight(.ultraLight))
					.imageScale(.large)
				
				HStack {
					Divider()
				}
			} // VStack
			
			
			
			// MARK: - third column
			
			VStack(alignment: .trailing, spacing: 4) {
				HStack() {
					Text("Guacamole")
					Spacer()
					Image("icon-guacamole")
						.resizable()
						.modifier(IconModifier())
				} // HStack
				
				Divider()
				
				HStack() {
					Text("Sandwiches")
					Spacer()
					Image("icon-sandwiches")
						.resizable()
						.modifier(IconModifier())
				} // HStack
				
				Divider()
				
				HStack() {
					Text("Soup")
					Spacer()
					Image("icon-soup")
						.resizable()
						.modifier(IconModifier())
				} // HStack
				
				Divider()
				
				HStack() {
					Text("Smoothie")
					Spacer()
					Image("icon-smoothies")
						.resizable()
						.modifier(IconModifier())
				} // HStack
				
			} // VStack
			
		} // HStack
		.font(.system(.callout, design: .serif))
		.foregroundColor(.gray)
		.padding(.horizontal)
		.frame(maxHeight: 220)
	}
}


// MARK: - modifier

struct IconModifier: ViewModifier {
	func body(content: Content) -> some View {
		content.frame(width: 42, height: 42, alignment: .center)
	}
}

// MARK: - preview

#Preview {
	DishesView()
		.previewLayout(.fixed(width: 414, height: 280))
}
