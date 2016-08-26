using System;

using WatchKit;

namespace MainApp.WatchAppExtension {
	public partial class NotificationController : WKUserNotificationInterfaceController {
		protected NotificationController (IntPtr handle) : base (handle)
		{
		}

		public NotificationController ()
		{
		}
	}
}
