Submission samples
===================
The samples in this directory optimized to be used by [submission_runner](https://github.com/xamarin/QualityAssurance/tree/master/Tools/iTunesConnectUploader/Ruby) Ruby gem to test publishing work flow code.
* [iOS](./iOSCoolApp/)
* [iOS F#](./FSharpiOSCoolApp/)
* [iOS iCloud Entitlements](./CloudKitAtlas/)
* [Mac](./MacCoolApp/)
* [tvOS](./UICatalog/)
* [watchOS](./WatchKitCatalog/)

Samples configuration
----------------------
All samples in this repository should be configured to use:
* *Release|Device* configuration
* Valid AppStore distribution certificate
* Valid provisioning profile
* iOS IPA Option should be set to build iTunes package archive

Be very accurate with any sample changes since it can affect submission test results.

------------------
Original samples can be found in [monotouch-samples](https://github.com/xamarin/monotouch-samples) repository.
