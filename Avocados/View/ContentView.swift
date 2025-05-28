//
//  ContentView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/22/25.
//

import SwiftUI

struct ContentView: View {
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 20) {
				
				
				// MARK: - header
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(alignment: .top, spacing: 0) {
						HeaderView()
					}
				}
				
				
				// MARK: - footer
				
				VStack(alignment: .center, spacing: 20) {
					
					Text("All About Avocados")
						.font(.system(.title, design: .serif))
						.fontWeight(.bold)
						.foregroundColor(Color("ColorGreenAdaptive"))
						.padding(8)
					
					Text("Everytghing you wanted to know about avocados but were too afraid to ask.")
						.font(.system(.body, design: .serif))
						.multilineTextAlignment(.center)
						.foregroundColor(.gray)
					
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

#Preview {
	ContentView()
}
