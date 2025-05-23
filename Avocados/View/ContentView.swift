//
//  ContentView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/22/25.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundStyle(.tint)
			Text("Avocado Recipes")
		}
		.padding()
	}
}

#Preview {
	ContentView()
}
