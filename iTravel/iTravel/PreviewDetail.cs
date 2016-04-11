using Newtonsoft.Json;

namespace iTravel {
	class PreviewDetail {
		[JsonProperty ("picture")]
		public string Picture { get; set; }

		[JsonProperty ("caption")]
		public string Caption { get; set; }
	}
}

