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
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(viewModel.doctors) { doctor in
                        DoctorCellView()
                    }
                }
            }.background(Color.iLightGray)
            
                .tabItem {
                    Image(.homeTab)
                        .renderingMode(.template)
                    Text("Главная")
                }
                .tag(0)
            
            
            
            
            
            Text("Приёмы")
                .tabItem {
                    Image(.visitsTabC)
                        .renderingMode(.template)
                    Text("Приёмы")
                }
                .tag(1)
            Text("Чат")
                .tabItem {
                    Image(systemName: "message")
                    Text("Чат")
                }
                .tag(2)
            Text("Профиль")
                .tabItem {
                    Image(.profileTab)
                        .renderingMode(.template)
                    Text("Профиль")
                }
                .tag(3)
            
        }
        .accentColor(.iPink)
        .onAppear() {
            UITabBar.appearance().isTranslucent = false
            UITabBar.appearance().barTintColor = .iWhite
            //UITabBar.appearance().barStyle = .black
            UITabBar.appearance().backgroundImage = UIImage(named: "transparent")
            UITabBar.appearance().shadowImage = UIImage(named: "grayShadow")
        }
        .overlay(alignment: .bottom) {
            CustomTabView(selectedTab: $selectedTab)
        }
        
    }
}

#Preview {
    ContentView(viewModel: HomeViewModel())
}
