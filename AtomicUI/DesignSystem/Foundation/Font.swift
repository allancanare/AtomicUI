//
//  Font.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/06.
//

import SwiftUI

extension AtomicUI {
    enum Font {
        // heading
        case headingExtraLarge
        case headingLarge
        case headingMedium
        case headingSmall
        case headingExtraSmall
        
        // body
        case bodyExtraLarge
        case bodyLarge
        case bodyMedium
        case bodySmall
        case bodyExtraSmall
        
        // action
        case actionLarge
        case actionMedium
        case actionSmall
        
        // caption
        case captionMedium
    }
}

extension AtomicUI.Font {
    var value: Font {
        switch self {
        case .headingExtraLarge:
            return .system(size: 24, weight: .black, design: .default)
        case .headingLarge:
            return .system(size: 18, weight: .black, design: .default)
        case .headingMedium:
            return .system(size: 16, weight: .black, design: .default)
        case .headingSmall:
            return .system(size: 14, weight: .heavy, design: .default)
        case .headingExtraSmall:
            return .system(size: 12, weight: .bold, design: .default)
        case .bodyExtraLarge:
            return .system(size: 18, weight: .regular, design: .default)
        case .bodyLarge:
            return .system(size: 16, weight: .regular, design: .default)
        case .bodyMedium:
            return .system(size: 14, weight: .regular, design: .default)
        case .bodySmall:
            return .system(size: 12, weight: .regular, design: .default)
        case .bodyExtraSmall:
            return .system(size: 10, weight: .medium, design: .default)
        case .actionLarge:
            return .system(size: 14, weight: .semibold, design: .default)
        case .actionMedium:
            return .system(size: 12, weight: .semibold, design: .default)
        case .actionSmall:
            return .system(size: 10, weight: .semibold, design: .default)
        case .captionMedium:
            return .system(size: 10, weight: .semibold, design: .default)
        }
    }
}

extension AtomicUI.Font: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .headingExtraLarge:
            return "Heading Extra Large"
        case .headingLarge:
            return "Heading Large"
        case .headingMedium:
            return "Heading Medium"
        case .headingSmall:
            return "Heading Small"
        case .headingExtraSmall:
            return "Heading Extra Small"
        case .bodyExtraLarge:
            return "Body Extra Large"
        case .bodyLarge:
            return "Body Large"
        case .bodyMedium:
            return "Body Medium"
        case .bodySmall:
            return "Body Small"
        case .bodyExtraSmall:
            return "Body Extra Small"
        case .actionLarge:
            return "Action Large"
        case .actionMedium:
            return "Action Medium"
        case .actionSmall:
            return "Action Small"
        case .captionMedium:
            return "Caption Medium"
        }
    }
}

struct Font_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                Section("Heading") {
                    ForEach([AtomicUI.Font.headingExtraLarge,
                             AtomicUI.Font.headingLarge,
                             AtomicUI.Font.headingMedium,
                             AtomicUI.Font.headingSmall,
                             AtomicUI.Font.headingExtraSmall],
                            id: \.self) { font in
                        Text(font.debugDescription)
                            .font(font.value)
                    }
                }
                
                Section("Body") {
                    ForEach([AtomicUI.Font.bodyExtraLarge,
                             AtomicUI.Font.bodyLarge,
                             AtomicUI.Font.bodyMedium,
                             AtomicUI.Font.bodySmall,
                             AtomicUI.Font.bodyExtraSmall],
                            id: \.self) { font in
                        Text(font.debugDescription)
                            .font(font.value)
                    }
                }
                
                Section("Action") {
                    ForEach([AtomicUI.Font.actionLarge,
                             AtomicUI.Font.actionMedium,
                             AtomicUI.Font.actionSmall],
                            id: \.self) { font in
                        Text(font.debugDescription)
                            .font(font.value)
                    }
                }
                
                Section("Caption") {
                    ForEach([AtomicUI.Font.captionMedium],
                            id: \.self) { font in
                        Text(font.debugDescription)
                            .font(font.value)
                    }
                }
            }
            .navigationTitle("Fonts")
        }
    }
}
