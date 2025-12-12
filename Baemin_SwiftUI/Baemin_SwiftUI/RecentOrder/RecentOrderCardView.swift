//
//  RecentOrderCardView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RecentOrderCardView: View {
    let item: StoreCardModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Rectangle()
                .fill(Color.gray.opacity(0.2))
                .frame(width: 188, height: 126)
                .cornerRadius(8)
            HStack {
                Image(.icClock)
                Text("최근 1번 주문한 가게")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.blue)
            }
            HStack {
                Text(item.storeName)
                    .font(.system(size: 14, weight: .bold))
                    .frame(width: 100)
                    .lineLimit(1)
                Image(.icStar)
                Text(String(format: "%.1f", item.rating ?? 0))
                    .font(.system(size: 14, weight: .bold))
                    .lineLimit(1)
                Text(String(item.reviewCount ?? 0))
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.gray)
                    .lineLimit(1)
            }
            HStack {
                Image(.icMoney)
                    .resizable()
                    .frame(width: 13, height: 13)
                Text(item.etaText ?? "")
                    .font(.system(size: 13, weight: .regular))
                Image(.icBaeminClub)
                    .resizable()
                    .frame(width: 13, height: 13)
                Text("무료배달")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundStyle(.purple)
            }
            
            HStack(spacing: 6) {
                ForEach(item.chips, id: \.self) { chip in
                    ChipView(
                        text: chip,
                        style: chip == "배민클럽" ? .outlined : .filled
                    )
                }
            }
            
        }
        .frame(width: 188)
    }
}

#Preview {
    RecentOrderView()
}
