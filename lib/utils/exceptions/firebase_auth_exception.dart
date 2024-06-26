class DemoFirebaseAuthException implements Exception {
  final String code;

  DemoFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new action code.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please check the code and try again.';
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';
      case 'user-token-expired':
        return 'The user\'s token has expired, and authentication is required. Please sign in again.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'user-token-revoked':
        return 'The user\'s token has been revoked. Please sign in again.';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      case 'invalid-recipient-email':
        return 'The recipient email is invalid.';
      case 'invalid-sender':
        return 'The sender is invalid.';
      case 'invalid-argument':
        return 'An invalid argument was provided.';
      case 'invalid-continue-uri':
        return 'The continue URL provided in the request is invalid.';
      case 'invalid-dynamic-link-domain':
        return 'The dynamic link domain in the request is not authorized.';
      case 'invalid-persistence-type':
        return 'The specified persistence type is invalid.';
      case 'invalid-oauth-provider':
        return 'The OAuth provider is not supported for this operation.';
      case 'invalid-oauth-client-id':
        return 'The OAuth client ID provided is either invalid or does not match the specified API key.';
      case 'unauthorized-domain':
        return 'The domain of the continue URL is not whitelisted.';
      case 'invalid-action-code':
        return 'The action code is malformed, expired, or has already been used.';
      case 'wrong-password':
        return 'The password is invalid or the user does not have a password.';
      case 'invalid-persistence-type':
        return 'The specified persistence type is invalid. It can be either "local", "session", or "none".';
      case 'invalid-provider-id':
        return 'The specified provider ID is invalid.';
      case 'invalid-verification-proofs':
        return 'The verification proof of ownership of the phone number is invalid.';
      case 'invalid-tenant-id':
        return 'The Auth instance\'s tenant ID is invalid.';
      case 'multi-factor-info-not-found':
        return 'The user does not have a second factor matching the identifier provided.';
      case 'multi-factor-auth-required':
        return 'Proof of ownership of a second factor is required to complete sign-in.';
      case 'missing-multi-factor-info':
        return 'No second factor identifier is provided.';
      case 'missing-multi-factor-session':
        return 'The request is missing proof of first factor successful sign-in.';
      case 'second-factor-already-in-use':
        return 'The second factor is already enrolled on this account.';
      case 'maximum-second-factor-count-exceeded':
        return 'The maximum allowed number of second factors on a user has been exceeded.';
      case 'unsupported-first-factor':
        return 'Enrolling a second factor or signing in with a multi-factor account requires sign-in with a supported first factor.';
      case 'email-change-needs-verification':
        return 'Multi-factor users must always have a verified email.';
      case 'session-cookie-revoked':
        return 'The session cookie has been revoked.';
      case 'tenant-id-mismatch':
        return 'The provided tenant ID does not match the Auth instance\'s tenant ID.';
      case 'unsupported-tenant-operation':
        return 'This operation is not supported in a multi-tenant context.';
      case 'invalid-tenant-configuration':
        return 'The tenant configuration is not found or is not valid.';
      case 'unsupported-persistence':
        return 'The current environment does not support the specified persistence type.';
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
      case 'internal-error':
        return 'An internal error occurred in the Firebase Authentication server.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
