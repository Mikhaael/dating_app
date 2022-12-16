class ApiEndPoints {
  static final String baseUrl = 'https://nimble-api.listedhosting.com/api/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

  class _AuthEndPoints {
    final String login = 'auth/login';
    final String register = 'auth/register';
  }
