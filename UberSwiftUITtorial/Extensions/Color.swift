//
//  Color.swift
//  UberSwiftUITtorial
//
//  Created by kittawat phuangsombat on 2022/10/14.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
 let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
