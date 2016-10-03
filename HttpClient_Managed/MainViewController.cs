using System;
using System.IO;
using System.Net;
using System.Threading.Tasks;

using CoreGraphics;
using Foundation;
using UIKit;

namespace HttpClient {
	public partial class MainViewController : UITableViewController {
		const string tls10ServerUrl = "https://tlstest-1.xamdev.com";
		const string tls11ServerUrl = "https://tlstest-11.xamdev.com";
		const string tls12ServerUrl = "https://tlstest-12.xamdev.com";

		public Type HandlerType { get; set; }

		public MainViewController (IntPtr handle) : base (handle)
		{
		}

		async public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			// Do not queue more than one request
			if (UIApplication.SharedApplication.NetworkActivityIndicatorVisible)
				return;

			HandlerType = null;
			TableView.AllowsSelection = false;
			switch (indexPath.Row)
			{
				case 0:
					await RunHttpWebRequest(tls10ServerUrl, SecurityProtocolType.Tls);
					break;
				case 1:
					await RunHttpWebRequest(tls11ServerUrl, SecurityProtocolType.Tls11);
					break;
				case 2:
					await RunHttpWebRequest(tls12ServerUrl, SecurityProtocolType.Tls12);
					break;
				case 3:
					await RunHttpWebRequest(tls10ServerUrl, SecurityProtocolType.Tls12);
					break;
				case 4:
					await RunHttpClientRequest(tls10ServerUrl, SecurityProtocolType.Tls);
					break;
				case 5:
					await RunHttpClientRequest(tls11ServerUrl, SecurityProtocolType.Tls11);
					break;
				case 6:
					await RunHttpClientRequest(tls12ServerUrl, SecurityProtocolType.Tls12);
					break;
				case 7:
					await RunHttpClientRequest(tls10ServerUrl, SecurityProtocolType.Tls12);
					break;
			}
		}

		async Task RunHttpWebRequest(string uri, SecurityProtocolType protocolType)
		{
			var actual = ServicePointManager.SecurityProtocol;

			try {
				ServicePointManager.SecurityProtocol = protocolType;

				var request = new HttpWebRequest(new Uri(uri));
				ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
				using (var response = await request.GetResponseAsync())
					RenderStream(response.GetResponseStream());
			} catch (WebException ex) {
				RenderString(ex.Message);
			} finally {
				ServicePointManager.SecurityProtocol = actual;
			}
		}

		async Task RunHttpClientRequest(string uri, SecurityProtocolType protocolType)
		{
			var actual = ServicePointManager.SecurityProtocol;
			try {
				using (var client = new System.Net.Http.HttpClient ()) {
					ServicePointManager.SecurityProtocol = protocolType;
					ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
					using (var response = await client.GetAsync (uri)) {
						var contentString = await response.Content.ReadAsStringAsync ();
						RenderString (contentString);
					}
				}
			} catch (WebException ex) {
				RenderString(ex.Message);
			} finally {
				ServicePointManager.SecurityProtocol = actual;
			}
		}

		void RenderStream (Stream stream)
		{
			if (stream == null)
				throw new ArgumentNullException ("stream");

			var reader = new StreamReader(stream);
			RenderString(reader.ReadToEnd());
		}

		void RenderString (string str)
		{
			InvokeOnMainThread (delegate {
				TableView.AllowsSelection = true;
				var requestResultController = new UIViewController ();
				requestResultController.View.BackgroundColor = UIColor.White;

				string handlerTypeName = HandlerType != null ? HandlerType.Name : string.Empty;

				var handler = new UILabel (new CGRect (20, 20, 300, 40)) {
					Text = "HttpClient is using " + handlerTypeName,
					Lines = 0
				};
				handler.SizeToFit ();

				var label = new UILabel (new CGRect (20, 40, 300, 80)) {
					Text = "The HTML returned by the server:"
				};

				var tv = new UITextView (new CGRect (20, 100, 300, 400)) {
					Text = str
				};

				if (HandlerType != null)
					requestResultController.Add (handler);
				requestResultController.Add (label);
				requestResultController.Add (tv);

				NavigationController.PushViewController (requestResultController, false);
			});
		}
	}
}
