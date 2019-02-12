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
