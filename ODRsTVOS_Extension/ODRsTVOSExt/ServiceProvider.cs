using System;
using Foundation;
using TVServices;

namespace ODRsTVOSExt
{
    [Register("ServiceProvider")]
    public class ServiceProvider : NSObject, ITVTopShelfProvider
    {
        protected ServiceProvider(IntPtr handle) : base(handle)
        {
            // Note: this .ctor should not contain any initialization logic.
        }

        public TVContentItem[] TopShelfItems
        {
            get { return new TVContentItem[] { }; }
        }

        public TVTopShelfContentStyle TopShelfStyle
        {
            get { return TVTopShelfContentStyle.Sectioned; }
        }
    }
}
