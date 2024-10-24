import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    @State private var selectedTab = 0
    @State private var searchText = ""
    
    @State private var chatCount: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            ScrollView {
                if viewModel.state == .loading {
                    ProgressView("Loading...")
                } else if viewModel.state == .error {
                    Text("Failed to load doctors")
                } else {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.doctors) { doctor in
                            DoctorCellView(doctor: doctor)
                        }
                    }
                }
                
                
            }
            .background(Color.iLightGray)
            .tag(0)
            .onAppear {
                Task {
                    await viewModel.fetchDocList()
                }
            }
            
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
