using UIKit;

namespace HttpClientSample {
	public class Application {
		static void Main (string[] args)
		{
			UIApplication.Main(args, null, "AppDelegate");
		}

		public static void Busy ()
		{
			UIApplication.SharedApplication.NetworkActivityIndicatorVisible = true;
		}

		public static void Done ()
		{
			UIApplication.SharedApplication.NetworkActivityIndicatorVisible = false;
		}
	}
}
