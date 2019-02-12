#rdar://20931915

Summary:
I found a weird bug caused by calling a swift closure in another closure. My Xcode is version 6.3.1 with Swift version 1.2. Here's the code:

import Swift

class ClosureStackOverflow {
    private var b: Bool = false
    private func callClosure1(callback: Void -> Void) {
        println("in closure 1")
        callback()
    }

    private func callClosure2(callback: Void -> Void) {
        println("in closure 2")
        callback()
    }

    func call() {
        callClosure1 { [weak self] in
            self?.callClosure2 {
                self?.b = true
            }
        }
    }
}

let c = ClosureStackOverflow()
c.call()

The code above compiles well. However if you call its call() method in a debug build, it will print "in closure 2" infinitely and eventually overflow the stack. Set breakpoints in both callClosure1 and callClosure2 then you can see the callback in callClosure2 has the same address as the callback in callClosure1. The code runs well in release build. Weird.

Steps to Reproduce:
1. Run the code above in a debug build

Expected Results:
The program print "in closure 1" with "in closure 2" and then quit.

Actual Results:
Stack overflow

Version:
Xcode 6.3.1, Swift 1.2

Notes:


Configuration:
Debug build
