//
//  StoreCategoryHorizontalView.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct StoreCategoryHorizontalView: View {
    let items: [StoreCategoryItem] = StoreCategoryItem.mockData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 18) {
                ForEach(items) { item in
                    VStack(spacing: 10) {
                        Rectangle()
                            .fill(Color.gray.opacity(0.1))
                            .frame(width: 58, height: 58)
                            .cornerRadius(20)
                        
                        Text(item.title)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.black)
                            .lineLimit(1)
                            .minimumScaleFactor(0.8)
                    }
                    .frame(width: 64)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
}
