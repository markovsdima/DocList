//
//  ContentView.swift
//  DocList
//
//  Created by Dmitry Markovskiy on 19.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    @State private var searchText = ""
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            
            /*
            NavigationStack {
                List(doctorsListExample) { doctor in
                    NavigationLink(destination: DoctorDetailsView()) {
                        VStack {
                            HStack {
                                AsyncImage(url: URL(string: doctor.avatar)) { image in
                                    image.image?
                                        .resizable()
                                        .scaledToFill()
                                }
                                    .frame(width: 50, height: 50)
                                    .clipShape(.circle)
                                VStack(alignment: .leading) {
                                    Text(doctor.fullName)
                                        .listRowSeparator(.hidden)
                                    Text("стаж \(doctor.seniority) лет")
                                }
                                Button(action: {}) {
                                    Image(systemName: "heart")
                                }
                            }
                            
                        }
                        
                    }
                    //.listRowBackground(Color(.red))
                }
                
                .navigationTitle("Педиатры")
                .navigationBarTitleDisplayMode(.inline)
            }
            */
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(doctorsListMock) { doctor in
                        DoctorCellView()
                    }
                }
            }.background(Color.iLightGray)
            
            
            .tabItem {
                Image(systemName: "house")
                Text("Главная")
            }
            .tag(0)
            
            
            
            
            
            Text("")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Приёмы")
                }
                .tag(1)
            Text("")
                .tabItem {
                    Image(systemName: "message")
                    Text("Чат")
                }
                .tag(2)
            Text("")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
                .tag(3)
                
        }
        
    }
}

#Preview {
    ContentView()
}
