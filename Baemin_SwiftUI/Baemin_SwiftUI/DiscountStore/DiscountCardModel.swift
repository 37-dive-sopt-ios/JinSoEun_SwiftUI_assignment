//
//  DiscountCardModel.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//


import Foundation

struct DiscountCardModel: Identifiable {
    let id = UUID()
    let storeName: String
    let rating: Double?
    let reviewCount: Int?
    let etaText: String?
    let deliveryText: String?
    let chips: [String]
}

extension DiscountCardModel {
    var ratingText: String? {
        guard let rating else { return nil }
        let ratingStr = String(format: "%.1f", rating)
        if let reviewCount { return "\(ratingStr) (\(reviewCount))" }
        return "\(ratingStr)"
    }

    var metaLine: String? {
        [etaText, deliveryText].compactMap { $0 }.joined(separator: " · ")
    }
}

extension DiscountCardModel {
    static let mockData: [DiscountCardModel] = [
        .init(
        storeName: "ASAP PIZZA 구로디지털점",
        rating: 5.0,
        reviewCount: 504,
        etaText: "31~46분",
        deliveryText: "무료배달",
        chips: ["배민클럽", "픽업가능"]
    ),
        .init(
        storeName: "레전드 고기한상",
        rating: 4.9,
        reviewCount: 504,
        etaText: "31~46분",
        deliveryText: "무료배달",
        chips: ["배민클럽", "픽업가능", "예약가능"]
    )
    ]
}
