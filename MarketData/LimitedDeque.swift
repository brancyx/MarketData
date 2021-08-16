//
//  LimitedDeque.swift
//  blackjack
//
//  Created by Charmaine Lim on 16/8/21.
//

import Foundation
import Collections
// TODO: add Codable protocol conformance ???
struct LimitedDeque<Element: Equatable> {

    private(set) var items: Deque<Element> = [] // to be populated after initialisation, by passing another collection as input

    let capacity: Int // set to public??
    
    // creates an empty Deque. To initialise, write LimitedDeque<CardModel>(capacity: 10)
    public init(capacity: Int) {
        self.capacity = capacity
    }
    
    // OR
    
    // takes last N elements from a given collection, where N = capacity
    public init<S: Sequence>(from other: S, capacity: Int) where S.Element == Element {
        self.capacity = capacity
        items = Deque(other.suffix(capacity))
    }

    // if item already exists in deque, bring item to end of deque.
    // else,
        // if deque has alr hit max capacity, remove the first element of the deque.
        // append the new item to the deque.
    public mutating func appendItem(_ item: Element) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
            items.append(item)
        } else {
            if items.count >= capacity {
                items.popFirst()
            }
            items.append(item)
        }
    }
    
}

