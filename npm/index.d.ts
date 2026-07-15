declare module '@apiverve/macaddresslookup' {
  export interface macaddresslookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface macaddresslookupResponse {
    status: string;
    error: string | null;
    data: MACAddressLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MACAddressLookupData {
      mac:     null | string;
      isValid: boolean | null;
      vendor:  null | string;
      oui:     null | string;
      formats: Formats;
  }
  
  interface Formats {
      colon: null | string;
      dash:  null | string;
      dot:   null | string;
      raw:   null | string;
  }

  export default class macaddresslookupWrapper {
    constructor(options: macaddresslookupOptions);

    execute(callback: (error: any, data: macaddresslookupResponse | null) => void): Promise<macaddresslookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: macaddresslookupResponse | null) => void): Promise<macaddresslookupResponse>;
    execute(query?: Record<string, any>): Promise<macaddresslookupResponse>;
  }
}
