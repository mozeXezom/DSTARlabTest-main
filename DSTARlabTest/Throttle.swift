//
//  Throttle.swift
//  DSTARlabTest
//
//  Created by mozeX on 12.04.2021.
//

import Foundation

final class Throttle {
    private let runInterval: TimeInterval
    private var lastRun = Date.distantPast
    
    init(runInterval: TimeInterval) {
        self.runInterval = runInterval
    }
    
    func execute(block: @escaping () -> ()) {
        let now = Date()
        guard now.seconds(after: lastRun) > runInterval else { return }
        block()
        lastRun = now
    }
}

private extension Date {
    func seconds(after date: Date) -> TimeInterval {
        return timeIntervalSince(date)
    }
}
