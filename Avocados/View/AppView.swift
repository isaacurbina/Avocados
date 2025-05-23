//
//  AppView.swift
//  Avocados
//
//  Created by Isaac Urbina on 5/23/25.
//

import SwiftUI

struct AppView: View {
	var body: some View {
		TabView {
			AvocadosView()
				.tabItem({
					Image("tabicon-branch")
					Text("Avocados")
				})
			ContentView()
				.tabItem({
					Image("tabicon-book")
					Text("Recipes")
				})
			RipeningStagesView()
				.tabItem({
					Image("tabicon-avocado")
					Text("Ripening")
				})
			SettingsView()
				.tabItem({
					Image("tabicon-settings")
					Text("Settings")
				})
		} // TabView
		.edgesIgnoringSafeArea(.top)
		.accentColor(.primary)
	}
}

#Preview {
	AppView()
}
