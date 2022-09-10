//
//  BorderWidth.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/09/10.
//

import SwiftUI

extension AtomicUI {
    enum BorderWidth {
        /// Value: 3
        case extraLarge
        /// Value: 2
        case large
        /// Value: 1.5
        case medium
        /// Value: 1
        case small
        /// Value: 0.5
        case extraSmall
    }
}

extension AtomicUI.BorderWidth {
    var value: CGFloat {
        switch self {
        case .extraLarge:
            return 3
        case .large:
            return 2
        case .medium:
            return 1.5
        case .small:
            return 1
        case .extraSmall:
            return 0.5
        }
    }
}
