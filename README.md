# storageomoerror
This project can be used to reproduce the error discussed in https://code.google.com/p/gmaps-api-issues/issues/detail?id=8459
## Instructions
* `git clone https://github.com/stevengharris/storageomoerror`
* Then refresh the local dependencies using CocoaPods by going into the directory and executing `pod install`. This will install GoogleMaps 1.10.x (1.10.3 as this is being written)
* Open the storageomoerror.xcodeproj in Xcode 7
* Fix the BundleIdentifier and Team in the StorageOmoError target in the "General" section
* Put your Google API iOS key in ViewController.swift
* Deploy to your device. The properly functioning app just shows a single view with a map centered on Redwood City, CA, USA.

All the code, and it can't get any simpler, is in ViewController.swift. The other things I modified from a virgin Xcode 7 single-view iOS Swift project include:
* Create the Podfile and run `pod install`
* Create the StorageOmoError-Bridging-Header.h file to link to GoogleMaps.h
* Add -ObjC to OTHER_LDFLAGS in the project "Build Settings"

In my case, I am using XCode 7 and an iPhone6 running iOS 9.0.1. I previously confirmed that the error appears on earlier versions of Google Maps API back to 9.2.

When the app deploys and runs, you will see (or at least I do!):

2015-09-27 14:45:51.199 StorageOmoError[1801:595640] CoreData: Failed to load optimized model at path '/var/mobile/Containers/Bundle/Application/6ED6BE73-7BB5-47B2-9E07-18CB017C4CB1/StorageOmoError.app/GoogleMaps.bundle/GMSCacheStorage.momd/Storage.omo'
2015-09-27 14:45:51.221 StorageOmoError[1801:595640] CoreData: Failed to load optimized model at path '/var/mobile/Containers/Bundle/Application/6ED6BE73-7BB5-47B2-9E07-18CB017C4CB1/StorageOmoError.app/GoogleMaps.bundle/GMSCacheStorage.momd/Storage.omo'
2015-09-27 14:45:51.234 StorageOmoError[1801:595640] CoreData: Failed to load optimized model at path '/var/mobile/Containers/Bundle/Application/6ED6BE73-7BB5-47B2-9E07-18CB017C4CB1/StorageOmoError.app/GoogleMaps.bundle/GMSCacheStorage.momd/Storage.omo'
2015-09-27 14:45:51.246 StorageOmoError[1801:595640] CoreData: Failed to load optimized model at path '/var/mobile/Containers/Bundle/Application/6ED6BE73-7BB5-47B2-9E07-18CB017C4CB1/StorageOmoError.app/GoogleMaps.bundle/GMSCacheStorage.momd/Storage.omo'

The app itself seems to run fine (as does my own that showed the error to begin with after upgrading to Swift 2.0 and Xcode 7
