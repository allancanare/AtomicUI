//
//  IconView.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/09.
//

import SwiftUI

// MARK: - View
extension AtomicUI {
    struct IconView: View {
        let icon: AtomicUI.Icon
        let style: Style
        
        var body: some View {
            icon.value
                .resizable()
                .renderingMode(style.color == nil ? .original : .template)
                .foregroundColor(style.color?.value)
                .frame(width: style.size.value,
                       height: style.size.value)
        }
    }
}

// MARK: - Custom Init
extension AtomicUI.IconView {
    init(_ icon: AtomicUI.Icon,
         style: Style = .default) {
        self.icon = icon
        self.style = style
    }
}

// MARK: - Style
extension AtomicUI.IconView {
    struct Style {
        let size: AtomicUI.IconSize
        let color: AtomicUI.Color?
        
        static let `default` = Style(size: .medium,
                                     color: .highlightDarkest)
    }
}

// MARK: - Preview
struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        AtomicUI.IconView(.search)
    }
}
