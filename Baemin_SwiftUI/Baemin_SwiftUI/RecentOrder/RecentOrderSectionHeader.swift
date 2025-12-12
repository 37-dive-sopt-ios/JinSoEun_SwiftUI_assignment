//
//  RecentOrderSectionHeader.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RecentOrderSectionHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 6) {
                Text("최근에 주문했어요")
                    .font(.system(size: 18, weight: .semibold))
                Image(.icInfoBlack)
            }

            Spacer()

            HStack(spacing: 4) {
                Text("전체보기")
                    .font(.system(size: 14))
                Image(.icMore)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
        }
        .padding(.horizontal, 16)
    }
}
