using System;
using System.Collections.Generic;

using CoreGraphics;
using SceneKit;
using UIKit;

namespace SceneKitGame
{
	public partial class GameViewController : UIViewController
	{
		public GameViewController(IntPtr handle) : base(handle)
		{
		}

		public override void DidReceiveMemoryWarning ()
		{
			base.DidReceiveMemoryWarning ();
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad();

			// create a new scene
			var scene = SCNScene.FromFile ("art.scnassets/ship");

			// create and add a camera to the scene
			var cameraNode = SCNNode.Create ();
			cameraNode.Camera = SCNCamera.Create ();
			scene.RootNode.AddChildNode (cameraNode);

			// place the camera
			cameraNode.Position = new SCNVector3 (0, 0, 15);

			// create and add a light to the scene
			var lightNode = SCNNode.Create ();
			lightNode.Light = SCNLight.Create ();
			lightNode.Light.LightType = SCNLightType.Omni;
			lightNode.Position = new SCNVector3 (0, 10, 10);
			scene.RootNode.AddChildNode (lightNode);

			// create and add an ambient light to the scene
			var ambientLightNode = SCNNode.Create ();
			ambientLightNode.Light = SCNLight.Create ();
			ambientLightNode.Light.LightType = SCNLightType.Ambient;
			ambientLightNode.Light.Color = UIColor.DarkGray;
			scene.RootNode.AddChildNode (ambientLightNode);

			// retrieve the ship node
			var ship = scene.RootNode.FindChildNode ("ship", true);

			// animate the 3d object
			ship.RunAction (SCNAction.RepeatActionForever (SCNAction.RotateBy(0, 2, 0, 1)));

			// retrieve the SCNView
			var scnView = (SCNView)View;

			// set the scene to the view
			scnView.Scene = scene;

			// allows the user to manipulate the camera
			scnView.AllowsCameraControl = true;

			// show statistics such as fps and timing information
			scnView.ShowsStatistics = true;

			// configure the view
			scnView.BackgroundColor = UIColor.Black;

			// add a tap gesture recognizer
			var tapGesture = new UITapGestureRecognizer (HandleTap);
			var gestureRecognizers = new List<UIGestureRecognizer> ();
			gestureRecognizers.Add (tapGesture);
			gestureRecognizers.AddRange (scnView.GestureRecognizers);
			scnView.GestureRecognizers = gestureRecognizers.ToArray ();
		}

		void HandleTap (UIGestureRecognizer gestureRecognize)
		{
			// retrieve the SCNView
			var scnView = (SCNView)View;

			// check what nodes are tapped
			CGPoint p = gestureRecognize.LocationInView (scnView);
			SCNHitTestResult[] hitResults = scnView.HitTest (p, (SCNHitTestOptions)null);

			// check that we clicked on at least one object
			if (hitResults.Length > 0) {
				// retrieved the first clicked object
				SCNHitTestResult result = hitResults[0];

				// get its material
				SCNMaterial material = result.Node.Geometry.FirstMaterial;

				// highlight it
				SCNTransaction.Begin ();
				SCNTransaction.AnimationDuration = 0.5f;

				// on completion - unhighlight
				SCNTransaction.SetCompletionBlock(() => {
					SCNTransaction.Begin ();
					SCNTransaction.AnimationDuration = 0.5f;

					material.Emission.Contents = UIColor.Black;

					SCNTransaction.Commit ();
				});

				material.Emission.Contents = UIColor.Red;

				SCNTransaction.Commit ();
			}
		}
	}
}

