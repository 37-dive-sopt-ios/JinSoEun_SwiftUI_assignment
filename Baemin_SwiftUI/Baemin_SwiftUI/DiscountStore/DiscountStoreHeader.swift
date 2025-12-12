//
//  DiscountStoreHeader.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct DiscountStoreHeader: View {
    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 6) {
                    Text("무조건 할인하는 가게")
                        .font(.system(size: 18, weight: .semibold))
                    Image(.icInfoBlack)
                }
                Text("2천원 이상 또는 15% 이상 할인중")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image(.imgDiscount)
                .resizable()
                .frame(width: 66, height: 59)
            
        }
        .padding(.horizontal, 16)
    }
}
