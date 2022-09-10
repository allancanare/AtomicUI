//
//  IconSize.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/09.
//

import SwiftUI

extension AtomicUI {
    enum IconSize {
        /// Value: 32
        case extraExtraLarge
        /// Value: 24
        case extraLarge
        /// Value: 20
        case large
        /// Value: 16
        case medium
        /// Value: 12
        case small
        /// Value: 10
        case extraSmall
        /// Value: 8
        case extraExtraSmall
    }
}

extension AtomicUI.IconSize {
    var value: CGFloat {
        switch self {
        case .extraExtraLarge:
            return 32
        case .extraLarge:
            return 24
        case .large:
            return 20
        case .medium:
            return 16
        case .small:
            return 12
        case .extraSmall:
            return 10
        case .extraExtraSmall:
            return 8
        }
    }
}
