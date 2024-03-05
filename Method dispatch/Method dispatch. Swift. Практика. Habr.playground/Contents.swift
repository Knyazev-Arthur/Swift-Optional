// MARK: Direct Dispatch (статическая)

class MyClass {
    func method() {
        print("This is MyClass method")
    }
}

class MySubClass: MyClass {
    override func method() {
        print("This is MySubClass method")
    }
}

let myClass = MyClass()
myClass.method()

let mySubClass = MySubClass()
mySubClass.method()


print("\n-----------------------------------------------------------------------\n")


// MARK: Table Dispatch (динамическая диспетчеризация)
// Virtual Table

class Parent {
    func method() {
        print("This is Parent method")
    }
}

class Child: Parent {
    override func method() {
        print("This is Child method")
    }
}

let parent = Parent()
parent.method()

let child: Parent = Child()
child.method()


print("\n-----------------------------------------------------------------------\n")


// Witness Table
protocol MyProtocol {
    func method()
}

class MyClassOne: MyProtocol {
    func method() {
        print("This is MyClassOne method")
    }
}

let myClassOne: MyProtocol = MyClassOne()
myClassOne.method()


print("\n-----------------------------------------------------------------------\n")


// Message Dispatch
import Foundation
class MyClassTwo: NSObject {
    @objc func method() {
        print("This is MyClassTwo method")
    }
}

let obj: AnyObject = MyClassTwo()
obj.perform(Selector(("method")))
