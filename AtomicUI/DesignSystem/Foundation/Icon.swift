//
//  Icon.swift
//  AtomicUI
//
//  Created by Allan Canare on 2022/08/06.
//

import SwiftUI

extension AtomicUI {
    enum Icon {
        case add
        case apple
        case arrowDown
        case arrowLeft
        case arrowRight
        case arrowUp
        case camera
        case categories
        case chat
        case check
        case close
        case create
        case delete
        case edit
        case energy
        case explore
        case eyeInvisible
        case eyeVisible
        case facebook
        case filter
        case google
        case hamburgerMenu
        case heartFilled
        case heartOutlined
        case image
        case inbox
        case info
        case linkedin
        case minus
        case placeholder
        case play
        case profile
        case search
        case send
        case settings
        case shoppingBagFilled
        case shoppingBagOutlined
        case sort
        case starFilled
        case starOutlined
        case store
        case success
        case warning
    }
}

extension AtomicUI.Icon {
    var value: Image {
        switch self {
        case .add:
            return .init("add")
        case .apple:
            return .init("apple")
        case .arrowDown:
            return .init("arrow-down")
        case .arrowLeft:
            return .init("arrow-left")
        case .arrowRight:
            return .init("arrow-right")
        case .arrowUp:
            return .init("arrow-up")
        case .camera:
            return .init("camera")
        case .categories:
            return .init("categories")
        case .chat:
            return .init("chat")
        case .check:
            return .init("check")
        case .close:
            return .init("close")
        case .create:
            return .init("create")
        case .delete:
            return .init("delete")
        case .edit:
            return .init("edit")
        case .energy:
            return .init("energy")
        case .explore:
            return .init("explore")
        case .eyeInvisible:
            return .init("eye-invisible")
        case .eyeVisible:
            return .init("eye-visible")
        case .facebook:
            return .init("facebook")
        case .filter:
            return .init("filter")
        case .google:
            return .init("google")
        case .hamburgerMenu:
            return .init("hamburger-menu")
        case .heartFilled:
            return .init("heart-filled")
        case .heartOutlined:
            return .init("heart-outlined")
        case .image:
            return .init("image")
        case .inbox:
            return .init("inbox")
        case .info:
            return .init("info")
        case .linkedin:
            return .init("linkedin")
        case .minus:
            return .init("minus")
        case .placeholder:
            return .init("placeholder")
        case .play:
            return .init("play")
        case .profile:
            return .init("profile")
        case .search:
            return .init("search")
        case .send:
            return .init("send")
        case .settings:
            return .init("settings")
        case .shoppingBagFilled:
            return .init("shopping-bag-filled")
        case .shoppingBagOutlined:
            return .init("shopping-bag-outlined")
        case .sort:
            return .init("sort")
        case .starFilled:
            return .init("star-filled")
        case .starOutlined:
            return .init("star-outlined")
        case .store:
            return .init("store")
        case .success:
            return .init("success")
        case .warning:
            return .init("warning")
        }
    }
}

extension AtomicUI.Icon: CaseIterable { }

extension AtomicUI.Icon: CustomDebugStringConvertible {
    var debugDescription: String {
        switch self {
        case .add:
            return "add"
        case .apple:
            return "apple"
        case .arrowDown:
            return "arrow-down"
        case .arrowLeft:
            return "arrow-left"
        case .arrowRight:
            return "arrow-right"
        case .arrowUp:
            return "arrow-up"
        case .camera:
            return "camera"
        case .categories:
            return "categories"
        case .chat:
            return "chat"
        case .check:
            return "check"
        case .close:
            return "close"
        case .create:
            return "create"
        case .delete:
            return "delete"
        case .edit:
            return "edit"
        case .energy:
            return "energy"
        case .explore:
            return "explore"
        case .eyeInvisible:
            return "eye-invisible"
        case .eyeVisible:
            return "eye-visible"
        case .facebook:
            return "facebook"
        case .filter:
            return "filter"
        case .google:
            return "google"
        case .hamburgerMenu:
            return "hamburger-menu"
        case .heartFilled:
            return "heart-filled"
        case .heartOutlined:
            return "heart-outlined"
        case .image:
            return "image"
        case .inbox:
            return "inbox"
        case .info:
            return "info"
        case .linkedin:
            return "linkedin"
        case .minus:
            return "minus"
        case .placeholder:
            return "placeholder"
        case .play:
            return "play"
        case .profile:
            return "profile"
        case .search:
            return "search"
        case .send:
            return "send"
        case .settings:
            return "settings"
        case .shoppingBagFilled:
            return "shopping-bag-filled"
        case .shoppingBagOutlined:
            return "shopping-bag-outlined"
        case .sort:
            return "sort"
        case .starFilled:
            return "star-filled"
        case .starOutlined:
            return "star-outlined"
        case .store:
            return "store"
        case .success:
            return "success"
        case .warning:
            return "warning"
        }
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                ForEach(AtomicUI.Icon.allCases,
                        id: \.self) { icon in
                    HStack {
                        icon.value
                            .resizable()
                            .frame(width: 24,
                                   height: 24)
                        Text(icon.debugDescription)
                    }
                }
            }
            .navigationTitle("Icons")
        }
    }
}
