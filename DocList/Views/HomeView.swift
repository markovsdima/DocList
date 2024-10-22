//
//  HomeView.swift
//  DocList
//
//  Created by Dmitry Markovskiy on 20.10.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
//        Text("Home View")
//            .font(.largeTitle)
        List(doctorsListExample) { doctor in
            NavigationLink(destination: DoctorDetailsView()) {
                Text(doctor.fullName)
                    //.listRowSeparator(.hidden)
            }
            
                
        }
        .listStyle(.plain)
        .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
    }
}

#Preview {
    HomeView()
}
