//
//  FactsView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/29/25.
//

import SwiftUI

struct FactsView: View {
	
	
	// MARK: - properties
	
	var fact: Fact
	
	
	// MARK: - body
	
	var body: some View {
		ZStack {
			Text(fact.content)
				.padding(.leading, 55)
				.padding(.trailing, 10)
				.padding(.vertical, 3)
				.frame(width: 300, height: 135, alignment: .center)
				.background(
					LinearGradient(
						gradient: Gradient(
							colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]
						),
						startPoint: .leading,
						endPoint: .trailing
					)
				)
				.cornerRadius(12)
				.lineLimit(6)
				.multilineTextAlignment(.leading)
				.font(.footnote)
				.foregroundColor(.white)
			
			Image(fact.image)
				.resizable()
				.frame(width: 66, height: 66, alignment: .center)
				.clipShape(Circle())
				.background(
					Circle()
						.fill(.white)
						.frame(width: 74, height: 74, alignment: .center)
				)
				.background(
					Circle()
						.fill(
							LinearGradient(
								gradient: Gradient(
									colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]
								),
								startPoint: .trailing,
								endPoint: .leading
							)
						)
						.frame(width: 82, height: 82, alignment: .center)
				)
				.background(
					Circle()
						.fill(Color("ColorAppearanceAdaptive"))
						.frame(width: 90, height: 90, alignment: .center)
				)
				.offset(x: -150)
			
		} // ZStack
	}
}


// MARK: - preview

#Preview {
	FactsView(fact: factsData[0])
		.previewLayout(.fixed(width: 400, height: 220))
}
