//
//  StoreCategoryItem.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct StoreCategoryItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: Image?
}

extension StoreCategoryItem {
    static let mockData: [StoreCategoryItem] = [
        .init(title: "B마트", icon: nil),
        .init(title: "CU", icon: nil),
        .init(title: "이마트슈퍼", icon: nil),
        .init(title: "홈플러스", icon: nil),
        .init(title: "GS25", icon: nil),
        .init(title: "이마트", icon: nil)
    ]
}
