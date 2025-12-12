//
//  RankingSectionView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RankingSectionView: View {
    let items: [RankingItem] = RankingItem.mockData

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            RankingSectionHeader()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        RankingCardView(item: item)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.vertical, 20)
    }
}
