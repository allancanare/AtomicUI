//
//  Spacing.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/09/09.
//

import SwiftUI

extension AtomicUI {
    enum Spacing {
        /// Value: 32
        case extraExtraLarge
        /// Value: 24
        case extraLarge
        /// Value: 16
        case large
        /// Value: 12
        case medium
        /// Value: 8
        case small
        /// Value: 4
        case extraSmall
        /// Value: 2
        case extraExtraSmall
    }
}

extension AtomicUI.Spacing {
    var value: CGFloat {
        switch self {
        case .extraExtraLarge:
            return 32
        case .extraLarge:
            return 24
        case .large:
            return 16
        case .medium:
            return 12
        case .small:
            return 8
        case .extraSmall:
            return 4
        case .extraExtraSmall:
            return 2
        }
    }
}

extension CGFloat {
    /// Value: 32
    static let extraExtraLarge = AtomicUI.Spacing.extraExtraLarge.value
    /// Value: 24
    static let extraLarge = AtomicUI.Spacing.extraLarge.value
    /// Value: 16
    static let large = AtomicUI.Spacing.large.value
    /// Value: 12
    static let medium = AtomicUI.Spacing.medium.value
    /// Value: 8
    static let small = AtomicUI.Spacing.small.value
    /// Value: 4
    static let extraSmall = AtomicUI.Spacing.extraSmall.value
    /// Value: 2
    static let extraExtraSmall = AtomicUI.Spacing.extraExtraSmall.value
}
