//
//  PromotionView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct PromotionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(.icBmart)
            HStack {
                Text("전상품 쿠폰팩 + 60% 특가")
                Image(.icMore)
                    .resizable()
                    .frame(width: 12, height: 12)
                Spacer()
            }
        }
        .padding()
    }
}
