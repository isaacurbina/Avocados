//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/23/25.
//

import SwiftUI

struct RipeningStagesView: View {
	
	
	// MARK: - properties
	
	var ripeningStages: [Ripening] = ripeningData
	
	
	// MARK: - body
	
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			VStack {
				Spacer()
				HStack(alignment: .center, spacing: 25) {
					ForEach(ripeningStages) { item in
						RipeningView(ripening: item)
					}
				} // HStack
				.padding(.vertical)
				.padding(.horizontal, 25)
				Spacer()
			} // VStack
		} // ScrollView
		.edgesIgnoringSafeArea(.all)
	}
}


// MARK: - preview

#Preview {
	RipeningStagesView(ripeningStages: ripeningData)
}
