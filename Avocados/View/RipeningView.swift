//
//  RipeningView.swift
//  Avocados
//
//  Created by Isaac Urbina on 6/1/25.
//

import SwiftUI

struct RipeningView: View {
	
	
	// MARK: - properties
	
	@State private var slideInAnimation: Bool = false
	
	
	// MARK: - body
	
	var body: some View {
		VStack {
			Image("avocado-ripening-1")
				.resizable()
				.frame(width: 100, height: 100, alignment: .center)
				.clipShape(Circle())
				.background(
					Circle()
						.fill(Color("ColorGreenLight"))
						.frame(width: 110, height: 110, alignment: .center)
				)
				.background(
					Circle()
						.fill(Color("ColorAppearanceAdaptive"))
						.frame(width: 120, height: 120, alignment: .center)
				)
				.zIndex(1)
				.animation(.easeInOut(duration: 1))
				.offset(y: slideInAnimation ? 55 : -55)
			
			VStack(alignment: .center, spacing: 10) {
				// stage
				VStack(alignment: .center, spacing: 0) {
					Text("1")
						.font(.system(.largeTitle, design: .serif))
						.fontWeight(.bold)
					Text("STAGE")
						.font(.system(.body, design: .serif))
						.fontWeight(.heavy)
				}
				.foregroundColor(Color("ColorGreenMedium"))
				.padding(.top, 65)
				.frame(width: 180)
				
				// title
				Text("Hard")
					.font(.system(.title, design: .serif))
					.fontWeight(.bold)
					.foregroundColor(Color("ColorGreenMedium"))
					.padding(.vertical, 12)
					.padding(.horizontal, 0)
					.frame(width: 220)
					.background(
						RoundedRectangle(cornerRadius: 12)
							.fill(
								LinearGradient(
									gradient: Gradient(colors: [.white, Color("ColorGreenLight")]),
									startPoint: .top,
									endPoint: .bottom
								)
							)
							.shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
					)
				
				// description
				Spacer()
				Text("Fresh off the tree, the avocado is very hard with no give.")
					.foregroundColor(Color("ColorGreenDark"))
					.fontWeight(.bold)
					.lineLimit(nil)
				Spacer()
				
				// ripeness
				Text("5+ DAYS")
					.foregroundColor(.white)
					.font(.system(.callout, design: .serif))
					.fontWeight(.bold)
					.shadow(radius: 3)
					.padding(.vertical)
					.padding(.horizontal, 0)
					.frame(width: 185)
					.background(
						RoundedRectangle(cornerRadius: 12)
							.fill(
								LinearGradient(
									gradient: Gradient(
										colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]
									),
									startPoint: .top,
									endPoint: .bottom
								)
							)
							.shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
					)
				
				// instruction
				Text("Hold avocados at room temperature until they are fully ripe.")
					.font(.footnote)
					.foregroundColor(Color("ColorGreenLight"))
					.fontWeight(.bold)
					.lineLimit(3)
					.frame(width: 160)
				Spacer()
				
			} // VStack
			.zIndex(0)
			.multilineTextAlignment(.center)
			.padding(.horizontal)
			.frame(width: 260, height: 485, alignment: .center)
			.background(
				LinearGradient(
					gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]),
					startPoint: .top,
					endPoint: .bottom
				)
			)
			.cornerRadius(20)
		} // VStack
		.edgesIgnoringSafeArea(.all)
		.onAppear {
			slideInAnimation.toggle()
		}
	}
}


// MARK: - preview

#Preview {
	RipeningView()
}
