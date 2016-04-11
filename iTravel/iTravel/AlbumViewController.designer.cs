// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace iTravel
{
	[Register ("AlbumViewController")]
	partial class AlbumViewController
	{
		[Outlet]
		UIKit.UITableView CustomTableView { get; set; }

		[Outlet]
		UIKit.UILabel DetailsLabel { get; set; }

		[Outlet]
		UIKit.UIProgressView ProgressView { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (CustomTableView != null) {
				CustomTableView.Dispose ();
				CustomTableView = null;
			}

			if (DetailsLabel != null) {
				DetailsLabel.Dispose ();
				DetailsLabel = null;
			}

			if (ProgressView != null) {
				ProgressView.Dispose ();
				ProgressView = null;
			}
		}
	}
}
