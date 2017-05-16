Submission samples
===================
The samples in this directory optimized to be used by [submission_runner](https://github.com/xamarin/QualityAssurance/tree/master/Tools/iTunesConnectUploader/Ruby) Ruby gem to test publishing work flow code.
* [iOS](./iOSCoolApp/)
* [iOS F#](./FSharpiOSCoolApp/)
* [iOS iCloud Entitlements](./CloudKitAtlas/)
* [iOS ODRs](./iTravel/)
* [watchOS](./WatchOS/)
* [Mac](./MacCoolApp/)
* [Mac F#](./FSharpMacCoolApp/)
* [Mac Don't Link](./MacCoolApp_DontLink/)
* [tvOS](./UICatalog/)
* [tvOS Don't Link](./UICatalog_DontLink/)
* [tvOS SceneKit](./SceneKitGame/)
* [tvOS ODRs](./ODRsTVOS/)
* [tvOS ODRs Extension](./ODRsTVOS_Extension)

Samples configuration
----------------------
All samples in this repository should be configured to use:
* *Release|Device* configuration(or *Release* for Mac apps)
* Valid AppStore distribution certificate
* Valid provisioning profile
* iOS IPA Option should be set to build iTunes package archive

Be very accurate with any sample changes since it can affect submission test results.

------------------
Original samples can be found in [monotouch-samples](https://github.com/xamarin/monotouch-samples) repository.
