//
//  Extension.swift
//  RingSize
//
//  Created by Vladimir Khalin on 09.02.2024.
//

import Foundation

extension Double {
    func round(nearest: Double) -> Double {
        let n = 1/nearest
        let numberToRound = self * n
        return numberToRound.rounded() / n
    }
}



