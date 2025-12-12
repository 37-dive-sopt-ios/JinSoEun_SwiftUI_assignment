//
//  CategoryPanelView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

// MARK: - Model

enum HomeTab: String, CaseIterable, Identifiable {
    case food = "음식배달"
    case pickup = "픽업"
    case store = "장보기·쇼핑"
    case gift = "선물하기"
    case benefit = "혜택모아보기"

    var id: String { rawValue }
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let title: String
}

// MARK: - View

struct CategoryPanelView: View {
    @State private var selectedTab: HomeTab = .food
    private let columns: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 12), count: 5)

    private let categories: [CategoryItem] = [
        .init(title: "한그릇"), .init(title: "치킨"), .init(title: "카페·디저트"), .init(title: "피자"), .init(title: "분식"),
        .init(title: "고기"), .init(title: "찜탕"), .init(title: "야식"), .init(title: "패스트푸드"), .init(title: "픽업")
    ]

    var body: some View {
        VStack(spacing: 0) {
            tabBar
                .padding(.horizontal, 16)
                .padding(.top, 12)
                .padding(.bottom, 8)

            Divider()

            LazyVGrid(columns: columns, spacing: 18) {
                ForEach(categories) { item in
                    VStack(spacing: 10) {
                        Rectangle()
                            .fill(.gray.opacity(0.1))
                            .cornerRadius(20)
                            .frame(width: 58, height: 58)

                        Text(item.title)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.black)
                            .lineLimit(1)
                            .minimumScaleFactor(0.8)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)

            Divider()

            Button {
            } label: {
                HStack(spacing: 6) {
                    Text("\(selectedTab.rawValue)에서 더보기")
                        .font(.system(size: 14, weight: .semibold))
                    Image(.icMore)
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black.opacity(0.06), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 2)
    }

    // MARK: - TabBar

    @Namespace private var tabUnderline

    private var tabBar: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 18) {
                ForEach(HomeTab.allCases) { tab in
                    Button {
                        withAnimation(.spring(response: 0.25, dampingFraction: 0.9)) {
                            selectedTab = tab
                        }
                    } label: {
                        VStack(spacing: 8) {
                            Text(tab.rawValue)
                                .font(.system(size: 16, weight: selectedTab == tab ? .bold : .regular))
                                .foregroundStyle(selectedTab == tab ? .black : .gray)

                            ZStack {
                                if selectedTab == tab {
                                    Capsule()
                                        .fill(.black)
                                        .frame(height: 3)
                                        .matchedGeometryEffect(id: "underline", in: tabUnderline)
                                } else {
                                    Color.clear.frame(height: 3)
                                }
                            }
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}
