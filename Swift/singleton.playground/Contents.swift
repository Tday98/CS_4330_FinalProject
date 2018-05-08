//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Shared URL Session
let sharedURLSession = URLSession.shared

// Default File Manager
let defaultFileManager = FileManager.default

// Standard User Defaults
let standardUserDefaults = UserDefaults.standard

// Default Payment Queue
let defaultPaymentQueue = SKPaymentQueue.default()

// examples

// Global Variables
let sharedNetworkManager = NetworkManager(baseURL: API.baseURL)

class NetworkManager {
    
    // MARK: - Properties
    
    let baseURL: URL
    
    // Initialization
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
}

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    print(sharedNetworkManager)
    return true
}

// Static Property and Private Initializer

class NetworkManager {
    
    // MARK: - Properties
    
    static let shared = NetworkManager(baseURL: API.baseURL)
    
    // MARK: -
    
    let baseURL: URL
    
    // Initialization
    
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
}

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    print(NetworkManager.shared)
    return true
}
