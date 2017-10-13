using System;
using System.Collections.Generic;

using Foundation;
using Intents;

namespace intentswatch {
	// As an example, this class is set up to handle Message intents.
	// You will want to replace this or add other intents as appropriate.
	// The intents you wish to handle must be declared in the extension's Info.plist.

	// You can test your example integration by saying things to Siri like:
	// "Send a message using <myApp>"
	// "<myApp> John saying hello"
	// "Search for messages in <myApp>"
	[Register ("IntentHandler")]
	public class IntentHandler : INExtension, IINRidesharingDomainHandling {
		protected IntentHandler (IntPtr handle) : base (handle)
		{
			// Note: this .ctor should not contain any initialization logic.
		}

		public override NSObject GetHandler (INIntent intent)
		{
			// This is the default implementation.  If you want different objects to handle different intents,
			// you can override this and return the handler you want for that particular intent.

			return this;
		}

		public void HandleRequestRide (INRequestRideIntent intent, Action<INRequestRideIntentResponse> completion)
		{
			var response = new INRequestRideIntentResponse (INRequestRideIntentResponseCode.InProgress, null);
			completion (response);
		}

		public void HandleListRideOptions (INListRideOptionsIntent intent, Action<INListRideOptionsIntentResponse> completion)
		{
			var response = new INListRideOptionsIntentResponse (INListRideOptionsIntentResponseCode.Success, null) {
				RideOptions = new [] {
					new INRideOption ("CatUnicorn Rides Inc.", NSDate.FromTimeIntervalSinceNow (1800)) {
						PriceRange = new INPriceRange (new NSDecimalNumber ("50.0"), "USD"),
						DisclaimerMessage = "You will go bananas riding our unicorns!"
					}
				},
				PaymentMethods = new [] {
					new INPaymentMethod (INPaymentMethodType.Credit, "Credit Card", "Visa - Master Card - Amex", null),
					INPaymentMethod.ApplePayPaymentMethod
				}
			};

			completion (response);
		}

		public void HandleRideStatus (INGetRideStatusIntent intent, Action<INGetRideStatusIntentResponse> completion)
		{
			var response = new INGetRideStatusIntentResponse (INGetRideStatusIntentResponseCode.InProgress, null);

			completion (response);
		}

		public void StartSendingUpdates (INGetRideStatusIntent intent, IINGetRideStatusIntentResponseObserver observer)
		{

		}

		public void StopSendingUpdates (INGetRideStatusIntent intent)
		{

		}
	}
}
