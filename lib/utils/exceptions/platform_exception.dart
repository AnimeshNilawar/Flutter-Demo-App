class DemoPlatformException implements Exception {
  final String code;

  DemoPlatformException(this.code);

  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your information.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-argument':
        return 'Invalid argument provided to the authentication method.';
      case 'invalid-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid.';
      case 'operation-not-allowed':
        return 'The sign-in provider is disabled for your Firebase project.';
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again.';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';
      case 'sign_in_failed':
        return 'Sign-in failed. Please try again.';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection.';
      case 'internal-error':
        return 'Internal error. Please try again later.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'No user found for the given email or UID.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'invalid-user-token':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'user-token-expired':
        return 'The user\'s token has expired, and authentication is required. Please sign in again.';
      case 'invalid-auth-event':
        return 'An internal error occurred in the authentication server.';
      case 'invalid-tenant-id':
        return 'The provided tenant ID is invalid.';
      case 'tenant-id-mismatch':
        return 'The provided tenant ID does not match the Auth instance\'s tenant ID.';
      case 'unsupported-tenant-operation':
        return 'This operation is not supported in a multi-tenant context.';
      case 'invalid-tenant-configuration':
        return 'The tenant configuration is not found or is not valid.';
      case 'insufficient-permission':
        return 'Insufficient permission to access the Firebase API.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
