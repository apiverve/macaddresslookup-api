using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MACAddressLookup
{
    /// <summary>
    /// Query options for the MAC Address Lookup API
    /// </summary>
    public class MACAddressLookupQueryOptions
    {
        /// <summary>
        /// The MAC address for which you want to get the data (e.g., 00-B0-D0-63-C2-26)
        /// </summary>
        [JsonProperty("mac")]
        public string Mac { get; set; }
    }
}
