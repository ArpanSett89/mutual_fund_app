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
    // return http://15.206.73.155:9191
    return '$schema$domain';
  }

  String get mfConstant {
    return '/mf';
  }

  String get analyticsUrlConstant {
    return '/api/v1/analytics/';
  }

  String get schema {
    return 'https://';
  }

  String get appName => 'MutualFund_App';

  String get packageName => 'com.test.mutual_fund_app';
}
