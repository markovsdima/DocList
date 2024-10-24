//
//  ContentView.swift
//  DocList
//
//  Created by Dmitry Markovskiy on 19.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    @State private var selectedTab = 0
    @State private var searchText = ""
    
    @State private var chatCount: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(viewModel.doctors) { doctor in
                        DoctorCellView()
                    }
                }
            }
            .background(Color.iLightGray)
            .tag(0)
            

            Text("Приёмы").tag(1)
            Text("Чат").tag(2)
            Text("Профиль").tag(3)
            
        }
        .accentColor(.iPink)
        .onAppear() {
            UITabBar.appearance().isTranslucent = false
            UITabBar.appearance().barTintColor = .iWhite
            UITabBar.appearance().backgroundImage = UIImage(named: "transparent")
            UITabBar.appearance().shadowImage = UIImage(named: "grayShadow")
        }
        .overlay(alignment: .bottom) {
            CustomTabView(selectedTab: $selectedTab, chatCount: $chatCount)
        }
        
    }
}

#Preview {
    ContentView(viewModel: HomeViewModel())
}
