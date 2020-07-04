//
//  Builder.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 04/07/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

infix operator ..: AdditionPrecedence
infix operator <-: MultiplicationPrecedence

struct Predicate<Element> {
    let code: (Element) -> Element

    func runCode(for element: Element) -> Element {
        return code(element)
    }
}

func <- <Element, T>(_ attribute: WritableKeyPath<Element, T>,
                     _ constant: T) -> Predicate<Element> {
    return Predicate(code: { value in
        var copy = value
        copy[keyPath: attribute] = constant
        return copy
    })
}

func .. <Element>(_ leftPredicate: Predicate<Element>,
                  _ rightPredicate: Predicate<Element>) -> Predicate<Element> {
    return Predicate(code: { value in
        let value = leftPredicate.runCode(for: value)
        return rightPredicate.runCode(for: value)
    })
}

protocol Builder {}

extension Builder {
    @discardableResult
    static func .. <T>(_ lhs: Self,
                      _ rhs: (keyPath: WritableKeyPath<Self, T>,
                      newValue: T)) -> Self {
        return lhs.set(rhs.keyPath, rhs.newValue)
    }

    @discardableResult
    static func .. (_ element: Self,
                    _ predicate: Predicate<Self>) -> Self {
        return element.with(predicate)
    }

    private func set<T>(_ keyPath: WritableKeyPath<Self, T>, _ newValue: T) -> Self {
        var copy = self
        copy[keyPath: keyPath] = newValue
        return copy
    }

    private func with(_ predicate: Predicate<Self>) -> Self {
        return predicate.runCode(for: self)
    }
}
