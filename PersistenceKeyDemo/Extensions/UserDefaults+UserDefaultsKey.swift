//
//  UserDefaults+UserDefaultsKey.swift
//  UserDefaultsKeyDemo
//
//  Created by Ike Mattice on 9/13/23.
//

import Foundation

// These functions extend UserDefaults to support a concrete instance of PersistenceKey, which in this application is UserDefaultsKey
// These methods included as part of the application
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.removeObject(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to remove the value from
    func removeObject(forKey userDefaultsKey: UserDefaultsKey) {
        self.removeObject(forKey: userDefaultsKey.rawValue)
    }
}

// MARK: - Get Methods
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.object(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The value for the associated key, if any
    func object(forKey userDefaultsKey: UserDefaultsKey) -> Any? {
        self.object(forKey: userDefaultsKey.rawValue)
    }
    /// A convenience method that wraps ``UserDefaults.standard.url(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``URL`` for the associated key, if any
    func url(forKey userDefaultsKey: UserDefaultsKey) -> URL? {
        self.url(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.array(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``[Any]`` for the associated key, if any
    func array(forKey userDefaultsKey: UserDefaultsKey) -> [Any]? {
        self.array(forKey: userDefaultsKey.rawValue)
    }
    /// A convenience method that wraps ``UserDefaults.standard.dictionary(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``[String: Any]`` for the associated key, if any
    func dictionary(forKey userDefaultsKey: UserDefaultsKey) -> [String : Any]? {
        self.dictionary(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.string(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``String`` for the associated key, if any
    func string(forKey userDefaultsKey: UserDefaultsKey) -> String? {
        self.string(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.stringArray(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``[String]`` for the associated key, if any
    func stringArray(forKey userDefaultsKey:  UserDefaultsKey) -> [String]? {
        self.stringArray(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.data(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``Data`` for the associated key, if any
    func data(forKey userDefaultsKey: UserDefaultsKey) -> Data? {
        self.data(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.bool(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``Bool`` for the associated key, if any
    func bool(forKey userDefaultsKey: UserDefaultsKey) -> Bool {
        self.bool(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.integer(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``Int`` for the associated key, if any
    func integer(forKey userDefaultsKey: UserDefaultsKey) -> Int {
        self.integer(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.float(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``Float`` for the associated key, if any
    func float(forKey userDefaultsKey: UserDefaultsKey) -> Float {
        self.float(forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.double(forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameter userDefaultsKey: The key to access the value from
    /// - Returns: The ``Double`` for the associated key, if any
    func double(forKey userDefaultsKey: UserDefaultsKey) -> Double {
        self.double(forKey: userDefaultsKey.rawValue)
    }
}

// MARK: - Set Methods
extension UserDefaults {
    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``Any?`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ value: Any?, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(value, forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``Float`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ float: Float, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(float, forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``Double`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ double: Double, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(double, forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``Int`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ int: Int, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(int, forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``Bool`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ bool: Bool, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(bool, forKey: userDefaultsKey.rawValue)
    }

    /// A convenience method that wraps ``UserDefaults.standard.set(_:forKey:)`` method to allow direct injection of a ``UserDefaultsKey``
    /// - Parameters:
    ///   - value: The ``URL?`` value to persist to UserDefaults
    ///   - userDefaultsKey: The key to set the value to
    func set(_ url: URL?, forKey userDefaultsKey: UserDefaultsKey) {
        self.set(url, forKey: userDefaultsKey.rawValue)
    }
}

// MARK: - Raw Representable Support
extension UserDefaults {
    func set<R>(_ value: R?, forKey userDefaultsKey: UserDefaultsKey) where R : RawRepresentable, R.RawValue == String {
        self.set(value?.rawValue, forKey: userDefaultsKey.rawValue)
    }

    func object<R>(forKey userDefaultsKey: UserDefaultsKey) -> R? where R : RawRepresentable, R.RawValue == String {
        guard let rawValue: String = string(forKey: userDefaultsKey.rawValue) else {
            return nil
        }

        return R(rawValue: rawValue)
    }
}

