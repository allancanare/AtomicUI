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
        
        // MARK: Heading - Medium - Dark Gray
        static let headingMediumDarkGrayDarkest = Style(font: .headingMedium,
                                                        color: .darkGrayDarkest)
        
        // MARK: Heading - Small - Dark Gray
        static let headingSmallDarkGrayDarkest = Style(font: .headingSmall,
                                                       color: .darkGrayDarkest)
        
        // MARK: Heading - Extra Small - Dark Gray
        static let headingExtraSmallDarkGrayDarkest = Style(font: .headingExtraSmall,
                                                            color: .darkGrayDarkest)
        
        static let headingExtraSmallDarkGrayDark = Style(font: .headingExtraSmall,
                                                         color: .darkGrayDark)
        
        static let headingExtraSmallDarkGrayLight = Style(font: .headingExtraSmall,
                                                          color: .darkGrayLight)
        
        static let headingExtraSmallDarkGrayLightest = Style(font: .headingExtraSmall,
                                                             color: .darkGrayLightest)
        
        // MARK: Heading - Extra Small - Light Gray
        static let headingExtraSmallLightGrayLightest = Style(font: .headingExtraSmall,
                                                              color: .lightGrayLightest)
        
        // MARK: Body - Medium - Dark Gray
        static let bodyMediumDarkGrayDarkest = Style(font: .bodyMedium,
                                                     color: .darkGrayDarkest)
        
        static let bodyMediumDarkGrayLight = Style(font: .bodyMedium,
                                                   color: .darkGrayLight)
        
        static let bodyMediumDarkGrayLightest = Style(font: .bodyMedium,
                                                      color: .darkGrayLightest)
        
        // MARK: Body - Medium - Error
        static let bodyMediumErrorDark = Style(font: .bodyMedium,
                                               color: .errorDark)
        
        // MARK: Body - Small - Dark Gray
        static let bodySmallDarkGrayDarkest = Style(font: .bodySmall,
                                                    color: .darkGrayDarkest)
        
        static let bodySmallDarkGrayMedium = Style(font: .bodySmall,
                                                   color: .darkGrayMedium)
        
        static let bodySmallDarkGrayLight = Style(font: .bodySmall,
                                                  color: .darkGrayLight)
        
        // MARK: Body - Extra Small - Dark Gray
        static let bodyExtraSmallDarkGrayLight = Style(font: .bodyExtraSmall,
                                                       color: .darkGrayLight)
        
        static let bodyExtraSmallDarkGrayLightest = Style(font: .bodyExtraSmall,
                                                          color: .darkGrayLightest)
        
        // MARK: Body - Extra Small - Light Gray
        static let bodyExtraSmallLightGrayDark = Style(font: .bodyExtraSmall,
                                                       color: .lightGrayDark)
        
        // MARK: Body - Extra Small - Error
        static let bodyExtraSmallErrorDark = Style(font: .bodyExtraSmall,
                                                   color: .errorDark)
        
        // MARK: Action - Medium - Dark Gray
        static let actionMediumDarkGrayLight = Style(font: .actionMedium,
                                                     color: .darkGrayLight)
        
        // MARK: Action - Medium - Highlight
        static let actionMediumHighlightDarkest = Style(font: .actionMedium,
                                                        color: .highlightDarkest)
        
        // MARK: Action - Medium - Light Gray
        static let actionMediumLightGrayLightest = Style(font: .actionMedium,
                                                         color: .lightGrayLightest)
        
        // MARK: Action - Small - Dark Gray
        static let actionSmallDarkGrayDarkest = Style(font: .actionSmall,
                                                      color: .darkGrayDarkest)
        
        // MARK: Caption - Medium - Light Gray
        static let captionMediumLightGrayLightest = Style(font: .captionMedium,
                                                          color: .lightGrayLightest)
        
        // MARK: Caption - Medium - Highlight
        static let captionMediumHighlightestDarkest = Style(font: .captionMedium,
                                                            color: .highlightDarkest)
        
        // Default
        static let `default` = headingSmallDarkGrayDarkest
        
        // TODO: List Item
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
                                      style: .headingExtraSmallDarkGrayDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayDark)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallDarkGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .headingExtraSmallLightGrayLightest)
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
                                      style: .bodyExtraSmallDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallDarkGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallLightGrayDark)
                    AtomicUI.TextView("Hello World!",
                                      style: .bodyExtraSmallErrorDark)
                }
                
                Section("Action - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumDarkGrayLight)
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumHighlightDarkest)
                    AtomicUI.TextView("Hello World!",
                                      style: .actionMediumLightGrayLightest)
                }
                
                Section("Action - Small") {
                    AtomicUI.TextView("Hello World!",
                                      style: .actionSmallDarkGrayDarkest)
                }
                
                Section("Caption - Medium") {
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumLightGrayLightest)
                    AtomicUI.TextView("Hello World!",
                                      style: .captionMediumHighlightestDarkest)
                }
            }
            .navigationTitle("TextViews")
        }
        .preferredColorScheme(.light)
    }
}
