import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    @State private var selectedTab = 0
    @State private var searchText = ""
    @State private var showDoctorInfo = false
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            NavigationStack {
                VStack {
                    CustomNavBar(title: "Педиатры", onBack: {})
                        .padding(.horizontal)
                    
                    SearchBarView(searchText: $viewModel.searchText)
                    
                    SortButtonsView(selectedSort: $viewModel.sortType)
                    
                    ScrollViewReader { proxy in
                        ScrollView {
                            if viewModel.state == .loading {
                                ProgressView("Loading...")
                            } else if viewModel.state == .error {
                                Text("Failed to load doctors")
                            } else {
                                EmptyView()
                                    .id("scrollToTopAnchor")
                                LazyVStack(spacing: 16) {
                                    ForEach(viewModel.sortedAndFilteredDoctors) { doctor in
                                        NavigationLink(destination: DoctorInfoView(doctor: doctor)) {
                                            DoctorCellView(doctor: doctor)
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                                .padding(.top, 16)
                                .padding(.bottom, 50)
                            }
                        }
                        .onChange(of: viewModel.sortType) {
                            withAnimation {
                                proxy.scrollTo("scrollToTopAnchor", anchor: .top)
                            }
                        }
                        .onAppear {
                            Task {
                                await viewModel.fetchDocList()
                            }
                        }
                    }
                    
                }
                .background(Color.iLightGray)
            }
            .tag(0)
            
            Text("Приёмы").tag(1)
            Text("Чат").tag(2)
            Text("Профиль").tag(3)
        }
        .accentColor(.iPink)
        .onAppear() {
            UITabBar.appearance().barTintColor = .iWhite
            UITabBar.appearance().backgroundColor = .iWhite
        }
        .overlay(alignment: .bottom) {
            CustomTabView(selectedTab: $selectedTab, chatCount: $viewModel.chatMessagesCount)
        }
        
    }
}

#Preview {
    ContentView(viewModel: MainViewModel())
}
