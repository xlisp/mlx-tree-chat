//
//  autogui_llmApp.swift
//  autogui_llm
//
//  Created by emacspy on 2024/8/8.
//

import SwiftUI

@main
struct autogui_llmApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: autogui_llmDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
