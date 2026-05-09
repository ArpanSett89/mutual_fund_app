class Config {
  int httpSendTimeout = 15000;
  int httpConnectTimeout = 15000;
  int httpReceiveTimeout = 10000;
  int httpIdleTimeout = 15000;
  int pageSize = 10;

  String get domain => 'api.mfapi.in';
  String get userName => 'userName1234';
  String get password => 'Password@1234';

  String get baseUrl {
    // return https://api.mfapi.in
    return '$schema$domain';
  }

  String get mfConstant {
    return '/mf';
  }

  String get schema {
    return 'https://';
  }

  String get appName => 'MutualFund_App';

  String get packageName => 'com.test.mutual_fund_app';
}
