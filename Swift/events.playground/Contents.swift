//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Cat {
    let events = EventManager();
    
    func meow() {
        println("Cat: MRaawwweeee");
        self.events.trigger("meow", information: "The cat is hungry!");
    }
}

class Human {
    func adoptCat(cat:Cat) {
        // you can pass in an anonymous code block to the event listener
        cat.events.listenTo("meow", action: {
            println("Human: Awww, what a cute kitty *pets cat*");
        });
        
        // or you can pass a function reference
        cat.events.listenTo("meow", action: self.dayDream);
        
        // Using the information from the trigger:
        // (notice the parameters for ponderCat)
        cat.events.listenTo("meow", action: self.ponderCat);
    }
    
    func dayDream() {
        println("Human daydreams about owning a dog");
    }
    
    func ponderCat(information:Any?) {
        if let info = information as? String {
            println("Oooh, I think I know:");
            println(info);
        }
    }
}

let zeus = Cat();
let stephen = Human();

stephen.adoptCat(zeus);
zeus.meow();
/*
 * Cat: MRaawwweeee
 * Human: Awww, what a cute kitty *pets cat*
 * Human daydreams about owning a dog
 * Oooh, I think I know:
 * The cat is hungry!
 */
