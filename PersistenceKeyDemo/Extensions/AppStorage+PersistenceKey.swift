//
//  AppStorage+PersistenceKey.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 10/2/23.
//

import SwiftUI

/// Allows for the initialization of an ``@AppStorage`` wrapped property to be initialized with syntax using a ``PersistenceKey``
/// These methods would be included as part of a framework
/// i.e. @AppStorage(PersistenceKeyInstance.exampleKey) var storedValue: ExampleType
extension AppStorage {
    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some  PersistenceKey, store: UserDefaults? = nil) where Value == Bool? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == Int? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == Double? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == String? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == URL? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == Data? {
        self.init(persistenceKey.rawValue, store: store)
    }

    /// Creates an ``AppStorage`` property stored under the provided ``PersistenceKey``
    /// - Parameters:
    ///   - persistenceKey: The key to store the value under
    ///   - store: The ``UserDefaults`` store to persist the value to, with a default of ``nil``
    public init<R>(_ persistenceKey: some PersistenceKey, store: UserDefaults? = nil) where Value == R?, R : RawRepresentable, R.RawValue == String {
        self.init(persistenceKey.rawValue, store: store)
    }
}



