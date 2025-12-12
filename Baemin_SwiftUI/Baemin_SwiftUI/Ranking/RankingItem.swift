//
//  RankingItem.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct RankingItem: Identifiable {
    let id = UUID()
    let storeName: String
    let rating: Double
    let reviewCount: Int
    let title: String
    let discountRate: Int
    let price: Int
    let originalPrice: Int?
    let minimumOrderText: String
}

extension RankingItem {
    static let mockData: [RankingItem] = [
        .init(
            storeName: "백억보쌈제육",
            rating: 5.0,
            reviewCount: 1973,
            title: "[든든한 한끼] 보쌈 막국수",
            discountRate: 25,
            price: 12000,
            originalPrice: 16000,
            minimumOrderText: "최소주문금액 없음"
        ),
        .init(
            storeName: "피자마싯겟다",
            rating: 5.0,
            reviewCount: 1973,
            title: "(1인) 피자 + 사이드 Set",
            discountRate: 20,
            price: 12000,
            originalPrice: 16000,
            minimumOrderText: "최소주문금액 없음"
        ),
        .init(
            storeName: "백억보쌈제육",
            rating: 5.0,
            reviewCount: 1973,
            title: "[든든한 한끼] 보쌈 막국수",
            discountRate: 25,
            price: 12000,
            originalPrice: 16000,
            minimumOrderText: "최소주문금액 없음"
        ),
        .init(
            storeName: "피자마싯겟다",
            rating: 5.0,
            reviewCount: 1973,
            title: "(1인) 피자 + 사이드 Set",
            discountRate: 20,
            price: 12000,
            originalPrice: 16000,
            minimumOrderText: "최소주문금액 없음"
        )
    ]
}
