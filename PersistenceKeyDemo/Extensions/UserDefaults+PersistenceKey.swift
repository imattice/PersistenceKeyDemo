//
//  UserDefaults+PersistenceKey.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 9/13/23.
//

import Foundation

// These functions extend UserDefaults to support any object that conforms to the PersistenceKey protocol
// These methods would be included as part of a framework
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.removeObject(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to remove the value from
    public func removeObject(forKey persistenceKey: some PersistenceKey) {
        self.removeObject(forKey: persistenceKey.rawValue)
    }
}

// MARK: - Get Methods
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.object(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The value for the associated key, if any
    public func object(forKey persistenceKey: some PersistenceKey) -> Any? {
        self.object(forKey: persistenceKey.rawValue)
    }
    /// A convenience method that wraps ``UserDefaults.standard.url(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``URL`` for the associated key, if any
    public func url(forKey persistenceKey: some PersistenceKey) -> URL? {
        self.url(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.array(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``[Any]`` for the associated key, if any
    public func array(forKey persistenceKey: some PersistenceKey) -> [Any]? {
        self.array(forKey: persistenceKey.rawValue)
    }
    /// A convenience method that wraps ``UserDefaults.standard.dictionary(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``[String: Any]`` for the associated key, if any
    public func dictionary(forKey persistenceKey: some PersistenceKey) -> [String : Any]? {
        self.dictionary(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.string(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``String`` for the associated key, if any
    public func string(forKey persistenceKey: some PersistenceKey) -> String? {
        self.string(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.stringArray(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``[String]`` for the associated key, if any
    public func stringArray(forKey persistenceKey: some PersistenceKey) -> [String]? {
        self.stringArray(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.data(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``Data`` for the associated key, if any
    public func data(forKey persistenceKey: some PersistenceKey) -> Data? {
        self.data(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.bool(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``Bool`` for the associated key, if any
    public func bool(forKey persistenceKey: some PersistenceKey) -> Bool {
        self.bool(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.integer(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``Int`` for the associated key, if any
    public func integer(forKey persistenceKey: some PersistenceKey) -> Int {
        self.integer(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.float(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``Float`` for the associated key, if any
    public func float(forKey persistenceKey: some PersistenceKey) -> Float {
        self.float(forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.double(forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameter persistenceKey: The key to access the value from
    /// - Returns: The ``Double`` for the associated key, if any
    public func double(forKey persistenceKey: some PersistenceKey) -> Double {
        self.double(forKey: persistenceKey.rawValue)
    }
}

// MARK: - Set Methods
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``Any?`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ value: Any?, forKey persistenceKey: some PersistenceKey) {
        self.set(value, forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``Float`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ float: Float, forKey persistenceKey: some PersistenceKey) {
        self.set(float, forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``Double`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ double: Double, forKey persistenceKey: some PersistenceKey) {
        self.set(double, forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``Int`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ int: Int, forKey persistenceKey: some PersistenceKey) {
        self.set(int, forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``Bool`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ bool: Bool, forKey persistenceKey: some PersistenceKey) {
        self.set(bool, forKey: persistenceKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``PersistenceKey``
    /// - Parameters:
    ///   - value: The ``URL?`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    public func set(_ url: URL?, forKey persistenceKey: some PersistenceKey) {
        self.set(url, forKey: persistenceKey.rawValue)
    }
}
