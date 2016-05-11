//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(element: Element) {
        items.append(element)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: Element? {
        return items.count > 0 ? items[items.count - 1] : nil
    }
}


protocol Container {
    typealias ItemType
    
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntContainer: Container {
    typealias ItemType = Int
    var items = [ItemType]()
    
    mutating func append(item: ItemType) {
        items.append(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> ItemType {
        return items[i]
    }
}

var container = IntContainer()
container.append(1)
print(container.count)
