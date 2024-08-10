//
//  mlx_tree_chatApp.swift
//  mlx_tree_chat
//
//  Created by emacspy on 2024/8/8.
//

import SwiftUI

@main
//struct mlx_tree_chatApp: App {
//    var body: some Scene {
//        DocumentGroup(newDocument: mlx_tree_chatDocument()) { file in
//            ContentView(document: file.$document)
//        }
//    }
//}

struct mlx_tree_chatApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(DeviceStat())
        }
    }
}
