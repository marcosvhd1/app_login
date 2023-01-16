class SignUpWithEPFailure {
  final String message;

  const SignUpWithEPFailure([this.message = 'An Unknown error occured.']);

  factory SignUpWithEPFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEPFailure('Please enter a stronger password.');
      case 'invalid-email':
        return const SignUpWithEPFailure('Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return const SignUpWithEPFailure('An account already exists for that email.');
      case 'operation-not-allowed':
        return const SignUpWithEPFailure('Operation is not allowed. Please contact support.');
      case 'user-disabled':
        return const SignUpWithEPFailure('This user has been disabled. Please contact support for help.');
      default:
        return const SignUpWithEPFailure();
    }
  }
}
