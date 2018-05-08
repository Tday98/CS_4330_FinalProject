# Swift Comparison done by Tristan Day

## Language Purpose/Genesis

Swift was designed around using Apple's Cocoa and Cocoa Touch frameworks and the already in existence Obj-C code.

Swift addressed some common programming issues such as null pointers and it provided syntactic sugar to avoid the pyramid of doom

Swift is mainly a replacement to Apple's previous Objective-C code.

## Unique Features

Swift has unique features such as Optionals and multiple return values

Other features are Closures, generics, structs that support methods, extensions and protocols, and Functional programming patterns.

## Namespaces


Namespaces are per-target.

Chris Lattner stated, "Namespacing is implicit in Swift, all classes (etc) are scoped by the module (XCode Target) they are in. No class prefixes needed"

[EXAMPLE](Swift/namespace.playground)

## Types

Swift supports all basic types and multiple other types such as structs, enums, and classes

Reference types such as a class are supported and so are value types such as structs, enums, and tuples.

New value types can be created in swift

[Example](Swift/types.playground)

## Classes

[Example](Swift/classes.playground)

## Instance Reference Name in data Types

Swift uses self.blah to reference itself the object

## Properties

In swift you have to define your own getters and setters.

Swift has a backing store for the values stored in a property

Swift does support computed properties

[Example](Swift/properties.playground)

## Interfaces / Protocols

Swift supports Protocols.

A protocol in swift has the ability to define a blueprint of methods, properties and other requirements that can then be adopted by a class, structure or enumeration.

[example](protocols.playground)

## Inheritance / extension

[example](inheritance.playground)

## Reflection

Not something typically done in a statically typed language but Swift and yet it does not cease to amaze me.

[example](reflection.playground)

## Memory Management

Swift uses Automatic Reference Counting (ARC) to manage an app's memory usage. Memory management is taken care of by Swift

ARC allocates memory when something is initialized and frees that memory when it detects that it is no longer needed.

This is why Swift has things like weak and strong references. If it is Strong that tells Swift not to deallocate the memory assigned to that reference.

## Comparisons of references and values

Swift supports both value equality and reference equality.

[example](equality.playground)

## Null/nil references

Swift uses the keyword nil

Swift uses Optionals for any type and class as a way to deal with potential nil values.

## Errors and exception handling

In swift errors are represented by values of types that conform to the Error protocol.

[example](errors.playground)

## Lambda expressions, closures, or functions as types

[example](lambda.playground)

## Implementation of listeners and event handlers

[example](events.playground)

## Singleton

Guarantee that only one instance of a class is instantiated 

[example](singleton.playground)

## Procedural Programming

Could not find anything on Procedural Programming but I assume it does.

## Functional programming

[example](functional.playground)

## MultiThreading

In Swift and on the iPhone the UI always has its own thread.

NSThread can create a low level thread

NSOperationQueue allows a pool of threads to be created and used to execute NSOperations in parallel. NSOperations can also be run on the main thread by asking NSOperationQueue for the mainQueue.
