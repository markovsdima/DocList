//
//  DocListApp.swift
//  DocList
//
//  Created by Dmitry Markovskiy on 19.10.2024.
//

import SwiftUI

@main
struct DocListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: MainViewModel())
        }
    }
}
