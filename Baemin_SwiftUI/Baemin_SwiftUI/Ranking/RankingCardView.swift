//
//  RankingCardView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RankingCardView: View {
    let item: RankingItem

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Rectangle()
                .fill(Color.gray.opacity(0.25))
                .frame(width: 145, height: 145)
                .cornerRadius(8)
            HStack {
                Text(item.storeName)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.gray)
                    .frame(width: 60)
                    .lineLimit(1)
                
                HStack(spacing: 4) {
                    Image(.icStar)
                        .font(.system(size: 11))
                    
                    Text(String(format: "%.1f", item.rating))
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                    
                    Text("(\(item.reviewCount))")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }
            }

            Text(item.title)
                .font(.system(size: 14, weight: .regular))
                .lineLimit(1)

            HStack(spacing: 6) {
                Text("\(item.discountRate)%")
                    .foregroundStyle(.red)
                    .font(.system(size: 15, weight: .bold))

                Text("\(item.price.formatted())원")
                    .font(.system(size: 16, weight: .bold))
            }

            if let original = item.originalPrice {
                Text("\(original.formatted())원")
                    .font(.system(size: 13))
                    .foregroundStyle(.gray)
                    .strikethrough()
            }

            Text("최소주문금액 없음")
                .font(.system(size: 13, weight: .bold))
                .foregroundStyle(.purple)
        }
        .frame(width: 145)
    }
}
