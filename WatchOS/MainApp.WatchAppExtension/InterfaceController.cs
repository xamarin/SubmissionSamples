using System;

using WatchKit;

namespace MainApp.WatchAppExtension {
	public partial class InterfaceController : WKInterfaceController {
		protected InterfaceController (IntPtr handle) : base (handle)
		{
			// Note: this .ctor should not contain any initialization logic.
		}
	}
}
