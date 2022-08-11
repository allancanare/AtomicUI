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
        
        // Extra Large 24 - Highlight
        static let extraLargeHighlightDarkest = Style(size: .extraLarge,
                                                      color: .highlightDarkest)
        
        // Extra Large 24 - Light Gray
        static let extraLargeLightGrayLightest = Style(size: .extraLarge,
                                                       color: .lightGrayLightest)
        
        // Large 20 - Highlight
        static let largeHighlightDarkest = Style(size: .large,
                                                 color: .highlightDarkest)
        
        // Large 20 - Light Gray
        static let largeLightGrayDarkest = Style(size: .large,
                                                 color: .lightGrayDarkest)
        static let largeLightGrayDark = Style(size: .large,
                                              color: .lightGrayDark)
        
        // Medium 16 - Highlight
        static let mediumHighlightDarkest = Style(size: .medium,
                                                  color: .highlightDarkest)
        
        // Medium 16 - Light Gray
        static let mediumLightGrayLightest = Style(size: .medium,
                                                   color: .lightGrayLightest)
        
        // Medium 16 - Dark Gray
        static let mediumDarkGrayDark = Style(size: .medium,
                                              color: .darkGrayDark)
        static let mediumDarkGrayLightest = Style(size: .medium,
                                                  color: .darkGrayLightest)
        
        // Small 12 - Highlight
        static let smallHighlightDarkest = Style(size: .small,
                                                 color: .highlightDarkest)
        
        // Small 12 - Light Gray
        static let smallLightGrayDarkest = Style(size: .small,
                                                 color: .lightGrayDarkest)
        static let smallLightGrayLightest = Style(size: .small,
                                                  color: .lightGrayLightest)
        
        // Extra Small 10 - Dark Gray
        static let smallDarkGrayLightest = Style(size: .small,
                                                 color: .darkGrayLightest)
        
        // Extra Small 10 - Highlight
        static let extraSmallHighlightDarkest = Style(size: .extraSmall,
                                                      color: .highlightDarkest)
        
        // Extra Small 10 - Light Gray
        static let extraSmallLightGrayDarkest = Style(size: .extraSmall,
                                                      color: .lightGrayDarkest)
        static let extraSmallLightGrayLightest = Style(size: .extraSmall,
                                                       color: .lightGrayLightest)
        
        // Extra Extra Small 8 - Light Gray
        static let extraExtraSmallLightGrayLightest = Style(size: .extraExtraSmall,
                                                            color: .lightGrayLightest)
        
        // Default
        static let `default` = mediumDarkGrayDark
    }
}

// MARK: - Preview
struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Section("Extra Large") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraLargeHighlightDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraLargeLightGrayLightest)
                }
                
                Section("Large") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .largeHighlightDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .largeLightGrayDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .largeLightGrayDark)
                }
                
                Section("Medium") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .mediumHighlightDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .mediumLightGrayLightest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .mediumDarkGrayDark)
                    AtomicUI.IconView(.heartFilled,
                                      style: .mediumDarkGrayLightest)
                }
                
                Section("Small") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .smallHighlightDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .smallLightGrayDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .smallLightGrayLightest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .smallDarkGrayLightest)
                }
                
                Section("Extra Small") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraSmallHighlightDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraSmallLightGrayDarkest)
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraSmallLightGrayLightest)
                }
                
                Section("Extra Extra Small") {
                    AtomicUI.IconView(.heartFilled,
                                      style: .extraExtraSmallLightGrayLightest)
                }
            }
            .navigationTitle("IconViews")
        }
        .preferredColorScheme(.dark)
    }
}
