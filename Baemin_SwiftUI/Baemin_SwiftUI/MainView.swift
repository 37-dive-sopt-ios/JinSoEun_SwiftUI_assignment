//
//  MainView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI


struct MainView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        
        appearance.stackedLayoutAppearance.normal.iconColor = .black
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        
        appearance.stackedLayoutAppearance.selected.iconColor = .black
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.black
        ]
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        
        
        TabView {
            ContentView()
                .tabItem {
                    Image(.icHome)
                    Text("홈")
                }
            Text("장보기·쇼핑")
                .tabItem {
                    Image(.icBag)
                    Text("장보기·쇼핑")
                }
            Text("찜")
                .tabItem {
                    Image(.icHeart)
                    Text("찜")
                }
            Text("주문내역")
                .tabItem {
                    Image(.icReciept)
                    Text("주문내역")
                }
            Text("마이배민")
                .tabItem {
                    Image(.icMy)
                    Text("마이배민")
                }
        }
        .font(.headline)
        .foregroundStyle(.black)
    }
}
