using System;

using SpriteKit;
using Foundation;
using UIKit;

namespace ODRsTVOS {
	public partial class ViewController : UIViewController {
		NSBundleResourceRequest request;
		string[] initialResources = { "Paris_01", "Paris_02", "Paris_03", "Paris_04" };

		public ViewController(IntPtr handle) : base(handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			LoadInitialResources ();
		}

		void LoadInitialResources ()
		{
			request = new NSBundleResourceRequest(new[] { "initial" });
			request.BeginAccessingResources(error => {
				NSOperationQueue.MainQueue.AddOperation(() => {
					if (error != null) {
						Console.WriteLine("Error occurred: {0}", error.LocalizedDescription);
						return;
					}

					foreach (var resourceName in initialResources) {
						var imagePath = NSBundle.MainBundle.PathForResource(resourceName, "jpg");
						UIImage image = UIImage.FromFile(imagePath);

						if (image == null)
							Throw ($"Failed to load intial resource {resourceName}");

						LoadPrefetchResources ();
					}
				});
			});
		}

		void LoadPrefetchResources()
		{
			request = new NSBundleResourceRequest(new[] { "prefetch" });
			request.BeginAccessingResources(error => {
				NSOperationQueue.MainQueue.AddOperation(() => {
					if (error != null) {
						Console.WriteLine("Error occurred: {0}", error.LocalizedDescription);
						return;
					}

					var dataAsset = new NSDataAsset("TestDataAsset");
					if (dataAsset == null)
						Throw("Failed to load pre-fetched resource TestDataAsset");

					LoadOdrsResources ();
				});
			});
		}

		void LoadOdrsResources ()
		{
			request = new NSBundleResourceRequest(new[] { "odr" });
			request.BeginAccessingResources(error => {
				NSOperationQueue.MainQueue.AddOperation(() => {
					if (error != null) {
						Console.WriteLine("Error occurred: {0}", error.LocalizedDescription);
						return;
					}

					SKTextureAtlas atlas = SKTextureAtlas.FromName("Atlas");
					if (atlas == null)
						Throw("Failed to load on-demand resource Atlas");

					var alertController = UIAlertController.Create ("Success", "All types of resources loaded OK", UIAlertControllerStyle.Alert);

					// Create the action.
					var acceptAction = UIAlertAction.Create("OK", UIAlertActionStyle.Default, null);

					// Add the actions.
					alertController.AddAction(acceptAction);
					PresentViewController (alertController, true, null);

					Console.WriteLine("All types of resources loaded OK");
				});
			});
		}

		void Throw (string message)
		{
			throw new Exception (message);
		}
	}
}


