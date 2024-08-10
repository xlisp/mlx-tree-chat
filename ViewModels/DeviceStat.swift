//
//  DeviceStat.swift
//  mlx_tree_chat
//
//  Created by emacspy on 2024/8/10.
//

import Foundation

//  LLMEval  main @ cat ViewModels/DeviceStat.swift

import MLXLLM
import MLX

@Observable
final class DeviceStat: @unchecked Sendable {

    @MainActor
    var gpuUsage = GPU.snapshot()

    private let initialGPUSnapshot = GPU.snapshot()
    private var timer: Timer?

    init() {
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [weak self] _ in
            self?.updateGPUUsages()
        }
    }

    deinit {
        timer?.invalidate()
    }

    private func updateGPUUsages() {
        let gpuSnapshotDelta = initialGPUSnapshot.delta(GPU.snapshot())
        DispatchQueue.main.async { [weak self] in
            self?.gpuUsage = gpuSnapshotDelta
        }
    }

}
