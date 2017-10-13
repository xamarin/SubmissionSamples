using System;
using System.Collections.Generic;

using Foundation;
using Intents;
using ObjCRuntime;

namespace intentsphone {
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



		//// Implement resolution methods to provide additional information about your intent (optional).
		//[Export ("resolveRecipientsForSearchForMessages:withCompletion:")]
		//public void ResolveRecipients (INSendMessageIntent intent, Action<INPersonResolutionResult []> completion)
		//{
		//	var recipients = intent.Recipients;
		//	// If no recipients were provided we'll need to prompt for a value.
		//	if (recipients.Length == 0) {
		//		completion (new INPersonResolutionResult [] { INPersonResolutionResult.NeedsValue });
		//		return;
		//	}

		//	var resolutionResults = new List<INPersonResolutionResult> ();

		//	foreach (var recipient in recipients) {
		//		var matchingContacts = new INPerson [] { recipient }; // Implement your contact matching logic here to create an array of matching contacts
		//		if (matchingContacts.Length > 1) {
		//			// We need Siri's help to ask user to pick one from the matches.
		//			resolutionResults.Add (INPersonResolutionResult.GetDisambiguation (matchingContacts));
		//		} else if (matchingContacts.Length == 1) {
		//			// We have exactly one matching contact
		//			resolutionResults.Add (INPersonResolutionResult.GetSuccess (recipient));
		//		} else {
		//			// We have no contacts matching the description provided
		//			resolutionResults.Add (INPersonResolutionResult.Unsupported);
		//		}
		//	}

		//	completion (resolutionResults.ToArray ());
		//}

		//[Export ("resolveContentForSendMessage:withCompletion:")]
		//public void ResolveContent (INSendMessageIntent intent, Action<INStringResolutionResult> completion)
		//{
		//	var text = intent.Content;
		//	if (!string.IsNullOrEmpty (text))
		//		completion (INStringResolutionResult.GetSuccess (text));
		//	else
		//		completion (INStringResolutionResult.NeedsValue);
		//}

		//// Once resolution is completed, perform validation on the intent and provide confirmation (optional).
		//[Export ("confirmSendMessage:completion:")]
		//public void ConfirmSendMessage (INSendMessageIntent intent, Action<INSendMessageIntentResponse> completion)
		//{
		//	// Verify user is authenticated and your app is ready to send a message.

		//	var userActivity = new NSUserActivity ("INSendMessageIntent");
		//	var response = new INSendMessageIntentResponse (INSendMessageIntentResponseCode.Ready, userActivity);
		//	completion (response);
		//}

		//// Handle the completed intent (required).
		//public void HandleSendMessage (INSendMessageIntent intent, Action<INSendMessageIntentResponse> completion)
		//{
		//	// Implement your application logic to send a message here.

		//	var userActivity = new NSUserActivity ("INSendMessageIntent");
		//	var response = new INSendMessageIntentResponse (INSendMessageIntentResponseCode.Success, userActivity);
		//	completion (response);
		//}

		//// Implement handlers for each intent you wish to handle.
		//// As an example for messages, you may wish to add HandleSearchForMessages and HandleSetMessageAttribute.

		//public void HandleSearchForMessages (INSearchForMessagesIntent intent, Action<INSearchForMessagesIntentResponse> completion)
		//{
		//	// Implement your application logic to find a message that matches the information in the intent.

		//	var userActivity = new NSUserActivity ("INSearchForMessagesIntent");
		//	var response = new INSearchForMessagesIntentResponse (INSearchForMessagesIntentResponseCode.Success, userActivity);

		//	// Initialize with found message's attributes
		//	var sender = new INPerson (new INPersonHandle ("sarah@example.com", INPersonHandleType.EmailAddress), null, "Sarah", null, null, null);
		//	var recipient = new INPerson (new INPersonHandle ("+1-415-555-5555", INPersonHandleType.PhoneNumber), null, "John", null, null, null);
		//	var message = new INMessage ("identifier", "I am so excited about SiriKit!", NSDate.Now, sender, new INPerson [] { recipient });
		//	response.Messages = new INMessage [] { message };
		//	completion (response);
		//}

		//public void HandleSetMessageAttribute (INSetMessageAttributeIntent intent, Action<INSetMessageAttributeIntentResponse> completion)
		//{
		//	// Implement your application logic to set the message attribute here.

		//	var userActivity = new NSUserActivity ("INSetMessageAttributeIntent");
		//	var response = new INSetMessageAttributeIntentResponse (INSetMessageAttributeIntentResponseCode.Success, userActivity);
		//	completion (response);
		//}
	}
}
