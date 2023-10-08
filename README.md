# PersistenceKeyDemo

## Version

1.0

## Build and Runtime Requirements

Xcode 15.0 or later
iOS 17.0 or later
OS X 14.0 or later
iCloud–enabled provisioning profile

## Configuring the Project

This sample project may require updating the provisioning profile and the bundle identifier before it can be built successfully.  There is only a single Target

## About this Project

PersistenceKeyDemo is a demo app designed to show the power of using an enumeration to key values for UserDefaults.  It is a working app, but all the interesting stuff happens in the code files.

### UserDefaults+UserDefaultsKey.swift
Extends UserDefaults to support UserDefaultKey enum
### AppStorage+UserDefaultsKey.swift
Extends AppStorage to support UserDefaultKey enum
