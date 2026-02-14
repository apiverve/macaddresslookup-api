declare module '@apiverve/macaddresslookup' {
  export interface macaddresslookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface macaddresslookupResponse {
    status: string;
    error: string | null;
    data: MACAddressLookupData;
    code?: number;
  }


  interface MACAddressLookupData {
      mac:         string;
      vendor:      string;
      dotNotation: string;
      hexFormat:   string;
      bitReversed: string;
      byteString:  string;
      base16:      string;
  }

  export default class macaddresslookupWrapper {
    constructor(options: macaddresslookupOptions);

    execute(callback: (error: any, data: macaddresslookupResponse | null) => void): Promise<macaddresslookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: macaddresslookupResponse | null) => void): Promise<macaddresslookupResponse>;
    execute(query?: Record<string, any>): Promise<macaddresslookupResponse>;
  }
}
