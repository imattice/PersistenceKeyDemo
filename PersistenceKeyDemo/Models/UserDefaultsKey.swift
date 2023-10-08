//
//  UserDefaultsKey.swift
//  PersistenceKeyDemo
//
//  Created by Ike Mattice on 9/13/23.
//

enum UserDefaultsKey: String, PersistenceKey {
    /// Indicates if the user has opened the app and made an account, stored as a ``Bool``
    case isNewUser
    /// The name the user has decided to call themselves, stored as a ``String``
    case userName
    /// The user's preferred color, stored as a ``Color``
    case preferredColor
}
