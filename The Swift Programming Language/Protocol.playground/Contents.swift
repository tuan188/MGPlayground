//: Playground - noun: a place where people can play

import UIKit

protocol Text {
    var text: String { get set }
}

extension Text {
    func description() -> String {
        return self.text
    }
}

class TextField: Text {
    var text = ""
}

let t = TextField()
t.text = "Tuan"
print(t.description())

extension CollectionType where Generator.Element: Text {
    
}