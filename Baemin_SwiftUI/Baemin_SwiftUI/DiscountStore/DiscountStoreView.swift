//
//  DiscountStoreView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct DiscountStoreView: View {
    let items: [DiscountCardModel] = DiscountCardModel.mockData

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            DiscountStoreHeader()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        DiscountStoreCardView(item: item)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
        .padding(.vertical, 20)
    }
}
