//
//  CustomTabView.swift
//  DocList
//
//  Created by Dmitry Markovskiy on 23.10.2024.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var selectedTab: Int
    @Binding var chatCount: Int
    
    var chatImage: Image {
        if chatCount > 0 {
            return Image(.chatTab)
        } else {
            return Image(.chatEmptyTab)
        }
    }
    
    let tabBarItems: [(image: String, title: String)] = [
        ("homeTab","Главная"),
        ("visitsTabC","Приемы"),
        ("visitsTabC","Чат"),
        ("profileTab","Профиль")
    ]
    
    let tabBarHeight: CGFloat = 83
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: tabBarHeight)
                .foregroundColor(.iWhite)
                .overlay(Divider().background(.iGray), alignment: .top)
            
            HStack(alignment: .bottom, spacing: 0) {
                
                // Главная
                VStack(spacing: 8) {
                    if selectedTab == 0 {
                        Image(.homeTab)
                            .renderingMode(.template)
                            .foregroundStyle(.iPink)
                    } else {
                        Image(.homeTab)
                            .renderingMode(.template)
                            .foregroundStyle(.iDarkGray)
                    }
                    Text("Главная")
                        .font(.sub3)
                        .foregroundStyle(.iDarkGray)
                    
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedTab = 0
                }
                
                // Приемы
                VStack(spacing: 8) {
                    if selectedTab == 1 {
                        Image(.visitsTabC)
                            .renderingMode(.template)
                            .foregroundStyle(.iPink)
                    } else {
                        Image(.visitsTabC)
                            .renderingMode(.template)
                            .foregroundStyle(.iDarkGray)
                    }
                    Text("Приемы")
                        .font(.sub3)
                        .foregroundStyle(.iDarkGray)
                    
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedTab = 1
                }
                
                // Чат
                VStack(spacing: 8) {
                    
                    if selectedTab == 2 {
                        chatImage
                            .renderingMode(.template)
                            .foregroundStyle(.iPink)
                        
                    } else {
                        chatImage
                            .renderingMode(.template)
                            .foregroundStyle(.iDarkGray)
                    }
                    
                    
                    Text("Чат")
                        .font(.sub3)
                        .foregroundStyle(.iDarkGray)
                    
                }
                .customBadge(chatCount)
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedTab = 2
                }
                
                // Профиль
                VStack(alignment: .center, spacing: 8) {
                    if selectedTab == 3 {
                        Image(.profileTab)
                            .renderingMode(.template)
                            .foregroundStyle(.iPink)
                    } else {
                        Image(.profileTab)
                            .renderingMode(.template)
                            .foregroundStyle(.iDarkGray)
                    }
                    Text("Профиль")
                        .font(.sub3)
                        .foregroundStyle(.iDarkGray)
                    
                }
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedTab = 3
                }
                
                
            }
            .frame(height: tabBarHeight)
        }
        //.padding(.horizontal)
    }
}

#Preview {
    CustomTabView(selectedTab: .constant(0), chatCount: .constant(0))
    //.previewLayout(.sizeThatFits)
}
