//
//  mlx_tree_chatApp.swift
//  mlx_tree_chat
//
//  Created by emacspy on 2024/8/8.
//

import SwiftUI

@main

struct mlx_tree_chatApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(DeviceStat())
        }
    }
}
