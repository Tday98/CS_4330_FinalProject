//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol DogBreed {
    typealias Level = Int
    
    var breedName: String { get set }
    var size: Level { get set }
    var health: Level { get set }
    var adaptability: Level { get set }
    var intelligence: Level { get set }
    var dogType: DogType { get set }
}

enum DogType: String {
    case companion = "companion"
    case sled = "sled dog"
}

class SiberianHusky: DogBreed {
    var breedName: String
    var size: Level
    var health: Level
    var adaptability: Level
    var intelligence: Level
    var dogType: DogType
    
    init() {
        self.breedName = "Husky"
        self.size = 3
        self.health = 4
        self.adaptability = 3
        self.intelligence = 3
        self.dogType = .sled
    }
}

class Pomsky: SiberianHusky {
    override init() {
        super.init()
        self.breedName = "Pomsky"
        self.size = 2
        self.dogType = .companion
    }
}
