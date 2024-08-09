//
//  ContentView.swift
//  autogui_llm
//
//  Created by emacspy on 2024/8/8.
//

import SwiftUI
// import LLM // 只是add .package(url: "https://github.com/ml-explore/mlx-swift-examples/", branch: "main"), 都不行。。。
import MLXLLM
import MLX
import MLXRandom
import Metal
import SwiftUI
import Tokenizers


struct ContentView: View {
    @Binding var document: autogui_llmDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(autogui_llmDocument()))
}
