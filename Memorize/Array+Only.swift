//
//  Array+Only.swift
//  Memorize
//
//  Created by bogdanov on 19.04.21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
