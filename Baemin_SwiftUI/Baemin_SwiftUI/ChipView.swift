//
//  ChipView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct ChipView: View {
    let text: String
    let style: Style

    enum Style { case filled, outlined }

    var body: some View {
        HStack(spacing: style == .outlined ? 4 : 0) {
            if style == .outlined {
                Image(.icBaeminClub)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }

            Text(text)
                .font(.system(size: 10, weight: .semibold))
                .lineLimit(1)
                .truncationMode(.middle)
        }
        .fixedSize()
        .padding(.horizontal, 5)
        .padding(.vertical, 3)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .fill(style == .filled ? Color.gray.opacity(0.12) : .mint.opacity(0.12))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(style == .outlined ? Color.teal : .clear, lineWidth: 1)
        )
    }
}
