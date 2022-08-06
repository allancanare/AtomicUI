//
//  Color.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/06.
//

import SwiftUI

extension AtomicUI {
    enum Color {
        // highlight
        case highlightDarkest
        case highlightDark
        case highlightMedium
        case highlightLight
        case highlightLightest
        
        // light gray
        case lightGrayDarkest
        case lightGrayDark
        case lightGrayMedium
        case lightGrayLight
        case lightGrayLightest
        
        // dark gray
        case darkGrayDarkest
        case darkGrayDark
        case darkGrayMedium
        case darkGrayLight
        case darkGrayLightest
        
        // success
        case successDark
        case successMedium
        case successLight
        
        // warning
        case warningDark
        case warningMedium
        case warningLight
        
        // error
        case errorDark
        case errorMedium
        case errorLight
    }
}

extension AtomicUI.Color {
    var value: Color {
        switch self {
        case .highlightDarkest:
            return .init(hex: 0x006FFD)
        case .highlightDark:
            return .init(hex: 0x2897FF)
        case .highlightMedium:
            return .init(hex: 0x6FB9FF)
        case .highlightLight:
            return .init(hex: 0xB3DAFF)
        case .highlightLightest:
            return .init(hex: 0xEAF2FF)
        case .lightGrayDarkest:
            return .init(hex: 0xC5C6CC)
        case .lightGrayDark:
            return .init(hex: 0xD4D6DD)
        case .lightGrayMedium:
            return .init(hex: 0xE8E9F1)
        case .lightGrayLight:
            return .init(hex: 0xF8F9FE)
        case .lightGrayLightest:
            return .init(hex: 0xFFFFFF)
        case .darkGrayDarkest:
            return .init(hex: 0x1E1E1E)
        case .darkGrayDark:
            return .init(hex: 0x2F3036)
        case .darkGrayMedium:
            return .init(hex: 0x494A50)
        case .darkGrayLight:
            return .init(hex: 0x71727A)
        case .darkGrayLightest:
            return .init(hex: 0x8F9098)
        case .successDark:
            return .init(hex: 0x298267)
        case .successMedium:
            return .init(hex: 0x3AC0A0)
        case .successLight:
            return .init(hex: 0xE7F4E8)
        case .warningDark:
            return .init(hex: 0xE86339)
        case .warningMedium:
            return .init(hex: 0xFFB37C)
        case .warningLight:
            return .init(hex: 0xFFF4E4)
        case .errorDark:
            return .init(hex: 0xED3241)
        case .errorMedium:
            return .init(hex: 0xFF616D)
        case .errorLight:
            return .init(hex: 0xFFE2E5)
        }
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(.sRGB,
                  red: Double((hex >> 16) & 0xff) / 255,
                  green: Double((hex >> 08) & 0xff) / 255,
                  blue: Double((hex >> 00) & 0xff) / 255,
                  opacity: alpha)
    }
}

extension AtomicUI.Color: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .highlightDarkest:
            return "Highlight Darkest"
        case .highlightDark:
            return "Highlight Dark"
        case .highlightMedium:
            return "Highlight Medium"
        case .highlightLight:
            return "Highlight Light"
        case .highlightLightest:
            return "Highlight Lightest"
        case .lightGrayDarkest:
            return "Light Gray Darkest"
        case .lightGrayDark:
            return "Light Gray Dark"
        case .lightGrayMedium:
            return "Light Gray Medium"
        case .lightGrayLight:
            return "Light Gray Light"
        case .lightGrayLightest:
            return "Light Gray Lightest"
        case .darkGrayDarkest:
            return "Dark Gray Darkest"
        case .darkGrayDark:
            return "Dark Gray Dark"
        case .darkGrayMedium:
            return "Dark Gray Medium"
        case .darkGrayLight:
            return "Dark Gray Light"
        case .darkGrayLightest:
            return "Dark Gray Lightest"
        case .successDark:
            return "Success Dark"
        case .successMedium:
            return "Success Medium"
        case .successLight:
            return "Success Light"
        case .warningDark:
            return "Warning Dark"
        case .warningMedium:
            return "Warning Medium"
        case .warningLight:
            return "Warning Light"
        case .errorDark:
            return "Error Dark"
        case .errorMedium:
            return "Error Medium"
        case .errorLight:
            return "Error Light"
        }
    }
}

struct Color_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Section("Highlight") {
                    ForEach([AtomicUI.Color.highlightDarkest,
                             AtomicUI.Color.highlightDark,
                             AtomicUI.Color.highlightMedium,
                             AtomicUI.Color.highlightLight,
                             AtomicUI.Color.highlightLightest],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
                
                Section("Light Gray") {
                    ForEach([AtomicUI.Color.lightGrayDarkest,
                             AtomicUI.Color.lightGrayDark,
                             AtomicUI.Color.lightGrayMedium,
                             AtomicUI.Color.lightGrayLight,
                             AtomicUI.Color.lightGrayLightest],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
                
                Section("Dark Gray") {
                    ForEach([AtomicUI.Color.darkGrayDarkest,
                             AtomicUI.Color.darkGrayDark,
                             AtomicUI.Color.darkGrayMedium,
                             AtomicUI.Color.darkGrayLight,
                             AtomicUI.Color.darkGrayLightest],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
                
                Section("Success") {
                    ForEach([AtomicUI.Color.successDark,
                             AtomicUI.Color.successMedium,
                             AtomicUI.Color.successLight],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
                
                Section("Warning") {
                    ForEach([AtomicUI.Color.warningDark,
                             AtomicUI.Color.warningMedium,
                             AtomicUI.Color.warningLight],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
                
                Section("Error") {
                    ForEach([AtomicUI.Color.errorDark,
                             AtomicUI.Color.errorMedium,
                             AtomicUI.Color.errorLight],
                            id: \.self) { color in
                        HStack {
                            color.value
                                .frame(width: 20, height: 20)
                            Text(color.debugDescription)
                        }
                    }
                }
            }
            .navigationTitle("Colors")
        }
    }
}
