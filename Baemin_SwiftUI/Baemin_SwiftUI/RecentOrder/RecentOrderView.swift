//
//  RecentOrderView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RecentOrderView: View {
    let items: [StoreCardModel] = StoreCardModel.mockData

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            RecentOrderSectionHeader()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        RecentOrderCardView(item: item)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.vertical, 20)
    }
}
