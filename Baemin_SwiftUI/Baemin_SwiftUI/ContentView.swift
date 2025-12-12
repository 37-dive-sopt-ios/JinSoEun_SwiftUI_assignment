//
//  ContentView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            MainHeader()
            PromotionView()
            CategoryPanelView()
            StoreCategoryHorizontalView()
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 10)
            HorizontalColorScrollView()
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 10)
            RankingSectionView()
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 10)
            RecentOrderView()
            Rectangle()
                .fill(Color.gray.opacity(0.1))
                .frame(height: 10)
            DiscountStoreView()
        }
    }
}
