//
//  SettingsView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/23/25.
//

import SwiftUI

struct SettingsView: View {
	
	
	// MARK: - properties
	
	@State private var enableNotification: Bool = true
	@State private var backgroundRefresh: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		VStack(alignment: .center, spacing: 0) {
			
			
			// MARK: - header
			
			
			VStack(alignment: .center, spacing: 5) {
				Image("avocado")
					.resizable()
					.scaledToFit()
					.padding(.top)
					.frame(width: 100, height: 100, alignment: .center)
					.shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
				
				Text("Avocados".uppercased())
					.font(.system(.title, design: .serif))
					.fontWeight(.bold)
					.foregroundColor(Color("ColorGreenAdaptive"))
				
			} // VStack
			.padding()
			
			
			// MARK: - form
			
			Form {
				
				
				// MARK: - section no. 1
				
				Section(header: Text("General Settings")) {
					Toggle(isOn: $enableNotification) {
						Text("Enable notification")
					}
					Toggle(isOn: $backgroundRefresh) {
						Text("Background refresh")
					}
				} // Section
				
				
				// MARK: - section no. 2
				
				Section(header: Text("Application")) {
					
					if enableNotification {
						
						HStack {
							Text("Product")
								.foregroundColor(.gray)
							Spacer()
							Text("Avocado Recipes")
						} // HStack
						
						HStack {
							Text("Compatibility")
								.foregroundColor(.gray)
							Spacer()
							Text("iPhone and iPad")
						} // HStack
						
						HStack {
							Text("Developer")
								.foregroundColor(.gray)
							Spacer()
							Text("Isaac Urbina")
						} // HStack
						
						HStack {
							Text("Designer")
								.foregroundColor(.gray)
							Spacer()
							Text("Robert Petras")
						} // HStack
						
						HStack {
							Text("Website")
								.foregroundColor(.gray)
							Spacer()
							Text("swiftuimasterclass.com")
						} // HStack
						
						HStack {
							Text("Version")
								.foregroundColor(.gray)
							Spacer()
							Text("1.0.0")
						} // HStack
						
					} else {
						
						HStack {
							Text("Personal message")
								.foregroundColor(.gray)
							Spacer()
							Text("👍🏽 Happy Coding!")
						} // HStack
					}
					
					
				} // Section
			} // Form
			
		} // VStack
		.frame(maxWidth: 640)
	}
}


// MARK: - preview

#Preview {
	SettingsView()
}
