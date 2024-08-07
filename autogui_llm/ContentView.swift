//
//  ContentView.swift
//  autogui_llm
//
//  Created by emacspy on 2024/8/8.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: autogui_llmDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(autogui_llmDocument()))
}
