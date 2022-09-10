//
//  TextView.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/08.
//

import SwiftUI

// MARK: - View
extension AtomicUI {
    struct TextView: View {
        let text: String
        let style: Style
        
        var body: some View {
            Text(text)
                .font(style.font.value)
                .foregroundColor(style.color.value)
        }
    }
}

// MARK: - Custom Init
extension AtomicUI.TextView {
    init(_ text: String,
         style: Style = .default) {
        self.text = text
        self.style = style
    }
}

// MARK: - Style
extension AtomicUI.TextView {
    struct Style {
        let font: AtomicUI.Font
        let color: AtomicUI.Color
        
        // Heading - Medium - Dark Gray
        static let headingMediumDarkGrayDarkest = Style(font: .headingMedium,
                                                        color: .darkGrayDarkest)
        
        // Heading - Small - Dark Gray
        static let headingSmallDarkGrayDarkest = Style(font: .headingSmall,
                                                       color: .darkGrayDarkest)
        
        // Heading - Extra Small - Highlight
        static let headingExtraSmallHighlightLight = Style(font: .headingExtraSmall,
                                                           color: .highlightLight)
        
        // Heading - Extra Small - Light Gray
        static let headingExtraSmallLightGrayLightest = Style(font: .headingExtraSmall,
                                                              color: .lightGrayLightest)
        
        // Heading - Extra Small - Dark Gray
        static let headingExtraSmallDarkGrayDarkest = Style(font: .headingExtraSmall,
                                                            color: .darkGrayDarkest)
        static let headingExtraSmallDarkGrayDark = Style(font: .headingExtraSmall,
                                                         color: .darkGrayDark)
        static let headingExtraSmallDarkGrayMedium = Style(font: .headingExtraSmall,
                                                           color: .darkGrayMedium)
        static let headingExtraSmallDarkGrayLight = Style(font: .headingExtraSmall,
                                                          color: .darkGrayLight)
        static let headingExtraSmallDarkGrayLightest = Style(font: .headingExtraSmall,
                                                             color: .darkGrayLightest)
        
        // Body - Large - Light Gray
        static let bodyLargeLightGrayLightest = Style(font: .bodyLarge,
                                                      color: .lightGrayLightest)
        
        // Body - Large - Dark Gray
        static let bodyLargeDarkGrayMedium = Style(font: .bodyLarge,
                                                   color: .darkGrayMedium)
        
        // Body - Medium - Dark Gray
        static let bodyMediumDarkGrayDarkest = Style(font: .bodyMedium,
                                                     color: .darkGrayDarkest)
        static let bodyMediumDarkGrayLight = Style(font: .bodyMedium,
                                                   color: .darkGrayLight)
        static let bodyMediumDarkGrayLightest = Style(font: .bodyMedium,
                                                      color: .darkGrayLightest)
        
        // Body - Medium - Error
        static let bodyMediumErrorDark = Style(font: .bodyMedium,
                                               color: .errorDark)
        
        // Body - Small - Dark Gray
        static let bodySmallDarkGrayDarkest = Style(font: .bodySmall,
                                                    color: .darkGrayDarkest)
        static let bodySmallDarkGrayMedium = Style(font: .bodySmall,
                                                   color: .darkGrayMedium)
        static let bodySmallDarkGrayLight = Style(font: .bodySmall,
                                                  color: .darkGrayLight)
        
        // Body - Extra Small - Light Gray
        static let bodyExtraSmallLightGrayDark = Style(font: .bodyExtraSmall,
                                                       color: .lightGrayDark)
        
        // Body - Extra Small - Dark Gray
        static let bodyExtraSmallDarkGrayLight = Style(font: .bodyExtraSmall,
                                                       color: .darkGrayLight)
        static let bodyExtraSmallDarkGrayLightest = Style(font: .bodyExtraSmall,
                                                          color: .darkGrayLightest)
        
        // Body - Extra Small - Error
        static let bodyExtraSmallErrorDark = Style(font: .bodyExtraSmall,
                                                   color: .errorDark)
        
        // Action - Medium - Highlight
        static let actionMediumHighlightDarkest = Style(font: .actionMedium,
                                                        color: .highlightDarkest)
        static let actionMediumHighlightDark = Style(font: .actionMedium,
                                                     color: .highlightDark)
        static let actionMediumHighlightMedium = Style(font: .actionMedium,
                                                       color: .highlightMedium)
        
        // Action - Medium - Light Gray
        static let actionMediumLightGrayMedium = Style(font: .actionMedium,
                                                       color: .lightGrayMedium)
        static let actionMediumLightGrayLight = Style(font: .actionMedium,
                                                      color: .lightGrayLight)
        static let actionMediumLightGrayLightest = Style(font: .actionMedium,
                                                         color: .lightGrayLightest)
        
        // Action - Medium - Dark Gray
        static let actionMediumDarkGrayLight = Style(font: .actionMedium,
                                                     color: .darkGrayLight)
        
        // Action - Small - Dark Gray
        static let actionSmallDarkGrayDarkest = Style(font: .actionSmall,
                                                      color: .darkGrayDarkest)
        
        // Caption - Medium - Highlight
        static let captionMediumHighlightDarkest = Style(font: .captionMedium,
                                                         color: .highlightDarkest)
        static let captionMediumHighlightLight = Style(font: .captionMedium,
                                                       color: .highlightLight)
        
        // Caption - Medium - Light Gray
        static let captionMediumLightGrayLightest = Style(font: .captionMedium,
                                                          color: .lightGrayLightest)
        
        // Caption - Medium - Dark Gray
        static let captionMediumDarkGrayLightest = Style(font: .captionMedium,
                                                         color: .darkGrayLightest)
        
        // Default
        static let `default` = bodyMediumDarkGrayDarkest
    }
}

// MARK: - Preview
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Section("Heading - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .headingMediumDarkGrayDarkest)
                }
                
                Section("Heading - Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .headingSmallDarkGrayDarkest)
                }
                
                Section("Heading - Extra Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallHighlightLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallLightGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayDark)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayMedium)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayLightest)
                }
                
                Section("Body - Large") {
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyLargeLightGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyLargeDarkGrayMedium)
                }
                
                Section("Body - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyMediumDarkGrayDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyMediumDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyMediumDarkGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyMediumErrorDark)
                }
                
                Section("Body - Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .bodySmallDarkGrayDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodySmallDarkGrayMedium)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodySmallDarkGrayLight)
                }
                
                Section("Body - Extra Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallLightGrayDark)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallDarkGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallErrorDark)
                }
                
                Section("Action - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumHighlightDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumLightGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumDarkGrayLight)
                }
                
                Section("Action - Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .actionSmallDarkGrayDarkest)
                }
                
                Section("Caption - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumHighlightDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumHighlightLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumLightGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumDarkGrayLightest)
                }
            }
            .navigationTitle("TextViews")
        }
        .preferredColorScheme(.light)
    }
}
