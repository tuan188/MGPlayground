//: Playground - noun: a place where people can play

import UIKit

enum LoginError: ErrorType {
    case InvalidUserNamePassword
    case Other(message: String)
}

String(format: "%02d", 5)

func login(username: String, password: String) throws {
    guard !username.isEmpty && !password.isEmpty else {
        throw LoginError.InvalidUserNamePassword
    }
    
    guard username != "Tuan" else {
        throw LoginError.Other(message: "Hello boss!")
    }
    
    print("Login success")
}

func getPasswordOfUsername(username: String) throws -> String {
    guard !username.isEmpty else {
        throw LoginError.InvalidUserNamePassword
    }
    
    return "123"
}

do {
    try login("Tuan", password: "")
}
catch LoginError.InvalidUserNamePassword {
    print("Invalid username or password")
}
catch LoginError.Other(let message) {
    print(message)
}

if let password = try? getPasswordOfUsername("") {
    print(password)
}
else {
    print("Cannot get password")
}

func testDefer() {
    defer {
        print("action 2")
        print("action 1")
    }
    print("start deferring")
}

testDefer()


