//
//  Button.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/14.
//

import SwiftUI

// MARK: - View
extension AtomicUI {
    struct Button: View {
        let leftIcon: AtomicUI.Icon?
        let title: String?
        let rightIcon: AtomicUI.Icon?
        let style: Style
        let action: () -> Void
        @Environment(\.isEnabled) var isEnabled
        
        var body: some View {
            SwiftUI.Button(action: action) {
                VStack {
                    Spacer(minLength: .medium)
                    HStack(spacing: .small) {
                        Spacer(minLength: .small)
                        if let leftIcon = leftIcon {
                            AtomicUI.IconView(leftIcon,
                                              style: isEnabled ? style.iconViewStyle : style.iconViewStyleDisabled)
                        }
                        if let title = title {
                            AtomicUI.TextView(title,
                                              style: isEnabled ? style.textViewStyle : style.textViewStyleDisabled)
                        }
                        if let rightIcon = rightIcon {
                            AtomicUI.IconView(rightIcon,
                                              style: isEnabled ? style.iconViewStyle : style.iconViewStyleDisabled)
                        }
                        Spacer(minLength: .small)
                    }
                    Spacer(minLength: .medium)
                }
            }
            .buttonStyle(ButtonStyle(style: style))
            .overlay {
                if let borderWidth = style.borderWidth,
                   let borderColor = style.borderColor,
                   let borderColorDisabled = style.borderColorDisabled {
                    RoundedRectangle(cornerRadius: .medium)
                        .stroke(isEnabled ? borderColor.value : borderColorDisabled.value,
                                lineWidth: borderWidth.value)
                }
            }
            .background(isEnabled ? style.backgroundColor.value : style.backgroundColorDisabled.value)
            .cornerRadius(.medium)
        }
    }
}

// MARK: - Custom Init
extension AtomicUI.Button {
    init(leftIcon: AtomicUI.Icon? = nil,
         title: String? = nil,
         rightIcon: AtomicUI.Icon? = nil,
         style: Style,
         action: @escaping () -> Void) {
        self.leftIcon = leftIcon
        self.title = title
        self.rightIcon = rightIcon
        self.style = style
        self.action = action
    }
}

// MARK: - Style
extension AtomicUI.Button {
    struct Style {
        let iconViewStyle: AtomicUI.IconView.Style
        let iconViewStyleDisabled: AtomicUI.IconView.Style
        let textViewStyle: AtomicUI.TextView.Style
        let textViewStyleDisabled: AtomicUI.TextView.Style
        let backgroundColor: AtomicUI.Color
        let backgroundColorDisabled: AtomicUI.Color
        let borderColor: AtomicUI.Color?
        let borderColorDisabled: AtomicUI.Color?
        let borderWidth: AtomicUI.BorderWidth?
        
        static let primary = Style(iconViewStyle: .smallLightGrayLightest,
                                   iconViewStyleDisabled: .smallLightGrayLightest,
                                   textViewStyle: .actionMediumLightGrayLightest,
                                   textViewStyleDisabled: .actionMediumLightGrayLightest,
                                   backgroundColor: .highlightDarkest,
                                   backgroundColorDisabled: .highlightMedium,
                                   borderColor: nil,
                                   borderColorDisabled: nil,
                                   borderWidth: nil)
        
        static let secondary = Style(iconViewStyle: .smallHighlightDarkest,
                                     iconViewStyleDisabled: .smallHighlightMedium,
                                     textViewStyle: .actionMediumHighlightDarkest,
                                     textViewStyleDisabled: .actionMediumHighlightMedium,
                                     backgroundColor: .clear,
                                     backgroundColorDisabled: .clear,
                                     borderColor: .highlightDarkest,
                                     borderColorDisabled: .highlightMedium,
                                     borderWidth: .medium)
        
        static let tertiary = Style(iconViewStyle: .smallHighlightDarkest,
                                    iconViewStyleDisabled: .smallHighlightMedium,
                                    textViewStyle: .actionMediumHighlightDarkest,
                                    textViewStyleDisabled: .actionMediumHighlightMedium,
                                    backgroundColor: .clear,
                                    backgroundColorDisabled: .clear,
                                    borderColor: nil,
                                    borderColorDisabled: nil,
                                    borderWidth: nil)
    }
    
    struct ButtonStyle: SwiftUI.ButtonStyle {
        let style: Style
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .overlay {
                    if configuration.isPressed {
                        AtomicUI.Color.lightGrayDarkest10.value
                    }
                }
        }
    }
}

// MARK: - Preview
struct Button_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Section("Primary") {
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .primary) { }
                        .fixedSize()
                        Text("Left Icon, Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        style: .primary) { }
                        .fixedSize()
                        Text("Left Icon, Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .primary) { }
                        .fixedSize()
                        Text("Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        style: .primary) { }
                        .fixedSize()
                        Text("Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        style: .primary) { }
                        .fixedSize()
                        Text("Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .primary) { }
                        .fixedSize()
                        .disabled(true)
                        Text("Disabled")
                    }
                }
                Section("Secondary") {
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .secondary) { }
                        .fixedSize()
                        Text("Left Icon, Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        style: .secondary) { }
                        .fixedSize()
                        Text("Left Icon, Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .secondary) { }
                        .fixedSize()
                        Text("Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        style: .secondary) { }
                        .fixedSize()
                        Text("Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        style: .secondary) { }
                        .fixedSize()
                        Text("Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .secondary) { }
                        .fixedSize()
                        .disabled(true)
                        Text("Disabled")
                    }
                }
                Section("Tertiary") {
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .tertiary) { }
                        .fixedSize()
                        Text("Left Icon, Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        style: .tertiary) { }
                        .fixedSize()
                        Text("Left Icon, Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .tertiary) { }
                        .fixedSize()
                        Text("Title, Right Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(title: "Like!",
                                        style: .tertiary) { }
                        .fixedSize()
                        Text("Title")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        style: .tertiary) { }
                        .fixedSize()
                        Text("Icon")
                    }
                    
                    HStack(spacing: 8) {
                        AtomicUI.Button(leftIcon: .heartOutlined,
                                        title: "Like!",
                                        rightIcon: .arrowRight,
                                        style: .tertiary) { }
                        .fixedSize()
                        .disabled(true)
                        Text("Disabled")
                    }
                }
            }
            .navigationTitle("Buttons")
        }
        .preferredColorScheme(.light)
    }
}


