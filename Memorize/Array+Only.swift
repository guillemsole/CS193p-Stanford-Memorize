//
//  Array+Only.swift
//  Memorize
//
//  Created by Guillem Solé Cubilo on 18/2/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
