//
//  RankingSectionHeader.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RankingSectionHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 6) {
                Text("우리 동네 한그릇 인기 랭킹")
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
