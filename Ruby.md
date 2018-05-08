#### Language Purpose & Genesis
##### Why was the language created? What problems was the language trying to address? Is the language a reaction to a previous language or a replacement for another language?
Ruby's creator hoped that it would be a buffer between programmers and the computer. It was meant to take a lot of the weight of coding off of the developer's shoulders. Ruby was created to be a scripting language that would be truly object-oriented, unlike Python, and would be more production ready than Perl. It wasn't created to fulfill a specific task, rather it was created to be general-purpose.

#### Unique features of the language
##### Does the language have any particularly unique features?
Since Ruby doesn't really have a purpose, it's abilities are quite broad - you can use it to do everything from develop applications in Android and OS X to creating personal domain-specific languages. Ruby is also extremely `magical`.

#### Name spaces
##### How are name spaces implemented?
Namespaces are implemented using modules. They are named just like class constants and defined just like class methods.

##### How are name spaces used?
Module methods are called by using the method name with a period & the module's name before it, and constants in the methods are referenced using the module name and two colons.
_Method Call:_ `y = Trig.sin()`
_Constant Reference:_ `Action.sin(Action::BAD)`

#### Types
##### What types does the language support?
Integers, Floats, Booleans, Arrays, Symbols, & Hashes.

##### Are both reference and value types supported?
Yep!

##### Can new value types be created?
Yes! Structs are the easiest way to do so.

#### Classes
##### Defining
`class Dog
end`

##### Creating new instances
`dog1 = Dog.new`

##### Constructing/initializing, destructing/de-initializing
Ruby treats constructing and destructing the same way it treats creating new instances.

#### Instance reference name in data type (class)
##### this? self?
Ruby uses self!

#### Properties
##### Getters and setters…write your own or built in?
These can be done two ways:
`class Car
    attr_reader :velocity
    attr_writer :velocity
end`
or
`class Car
    attr_accessor :velocity
end`

##### Backing variables?
Not supported in Ruby.

##### Computed properties?
Ruby doesn't have native computed properties, but they can be accessed using things like Ember, Gamebox, or Vue.

#### Interfaces / protocols
##### What does the language support?
Ruby has interfaces just like any other language, but doesn't have any protocols.

##### What abilities does it have?
Can be used for simple things like the ability to read/write CSV files.

##### How is it used?
Interfaces are typically used when using Ruby on Rails for web development.

#### Inheritance / extension
Inheritance in Ruby is handled very similarly to Java.
`class Mammal  
  def breathe  
    puts "inhale and exhale"  
  end  
end  

class Cat < Mammal  
  def speak  
    puts "Meow"  
  end  
end  

rani = Cat.new  
rani.breathe  
rani.speak `

#### Reflection
##### What reflection abilities are supported?
The main reflection abilities within Ruby is the ability to know in advance whether or not an object knows how to handle what you want to send it before you've even sent the object.

##### How is reflection used?
It is done using `respond_to?` as in the example below:
`obj = Object.new
if obj.respond_to?(:program)
  obj.program
else
  puts "Sorry, the object doesn't understand the 'program' message."
end`

#### Memory management
##### How is it handled?
Ruby has no concept of stack allocated variables - all variables live on the heap.

##### How does it work?
Ruby puts all variables on the heap and then garbage collects them.

##### Garbage collection?
Ruby is a garbage collected language.

##### Automatic reference counting?
This isn't the standard in Ruby as it's garbage collected.

#### Comparisons of references and values
##### How are values compared? (i.e. comparing two strings)
`eql?` or `==`

#### Null/nil references
##### Which does the language use? (null/nil/etc)
nil

##### Does the language have features for handling null/nil references?
`&` handles the nil value exceptions.

#### Errors and exception handling
This is typically done using a `rescue` block.

#### Lambda expressions, closures, or functions as types
`l = lambda do |string|
  if string == "try"
    return "There's no such thing"
  else
    return "Do or do not."
  end
end
puts l.call("try")`

#### Implementation of listeners and event handlers
Observers are built directly into Ruby, but event handlers and listeners are extremely slow and unhelpful.

#### Singleton
##### How is a singleton implemented?
It can be implemented several ways: either traditionally or using the Ruby singleton module.

##### Can it be made thread-safe?
Yes, but only if it's state is read-only and immutable.

##### Can the singleton instance be lazily instantiated?
Yes, by using the Ruby singleton module.

#### Procedural programming
##### Does the language support procedural programming?
Yes!

#### Functional programming
##### Does the language support functional programming?
Yep!

#### Multithreading
##### Threads or thread-like abilities
Threads are natively supported in Ruby.

##### How is multitasking accomplished?
Threads can either be fiber-local or thread-local. Several ways to schedule, like many other languages.
