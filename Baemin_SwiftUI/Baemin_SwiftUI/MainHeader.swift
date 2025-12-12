//
//  MainHeader.swift
//  Baemin_SwiftUI
//
//  Created by 진소은 on 12/12/25.
//

import SwiftUI

struct MainHeader: View {
    @State var searchText: String = ""
    var body: some View {
        VStack{
            HStack {
                Text("우리집")
                    .font(.system(size: 16, weight: .bold, design: .default))
                Image(.icToggleDown)
                Spacer()
                Image(.icDiscount)
                Image(.icNotification)
                Image(.icCart)
            }
            HStack(spacing: 8) {
                TextField("찾아라! 맛있는 음식과 맛집", text: $searchText)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.none)
                    .foregroundColor(.black)
                
                Image(.icSearch)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
        .padding()
    }
}
