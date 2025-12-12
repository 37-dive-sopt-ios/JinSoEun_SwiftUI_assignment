//
//  HorizontalColorScrollView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct HorizontalColorScrollView: View {
    private let colors: [Color] = [
        .yellow,
        .orange,
        .red,
        .green,
        .blue
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(colors.indices, id: \.self) { index in
                    colors[index]
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: 140
                        )
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }
}
