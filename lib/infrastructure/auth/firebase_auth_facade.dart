


/*
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );


  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Stream<Option<User>> get onAuthStateChanged {
    return _firebaseAuth.onAuthStateChanged
        .map((firebaseUser) => optionOf(firebaseUser?.toDomain()));
  }


  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } catch (e) {
      debugPrint(e.code);
      switch (e.code) {
        case "auth/email-already-in-use":
          return left(const AuthFailure.emailAlreadyInUse());
          break;
        default:
          return left(const AuthFailure.serverError());
      }
    }

    /// The below works on mobile. Not on Web
    // on PlatformException catch (e) {
    //   if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
    //     return left(const AuthFailure.emailAlreadyInUse());
    //   } else {
    //     return left(const AuthFailure.serverError());
    //   }
    // }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } catch (e) {
      switch (e.code) {
        case "auth/wrong-password":
        case "auth/user-not-found":
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
          break;
        case "auth/user-disabled":
          return left(const AuthFailure.userDisabled());
          break;
        default:
          return left(const AuthFailure.serverError());
      }
    }

    /// The below works on mobile. Not on web
    // on PlatformException catch (e) {
    //   if (e.code == 'ERROR_WRONG_PASSWORD' ||
    //       e.code == 'ERROR_USER_NOT_FOUND') {
    //     return left(const AuthFailure.invalidEmailAndPasswordCombination());
    //   } else {
    //     return left(const AuthFailure.serverError());
    //   }
    // }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    GoogleSignInAccount googleUser;
    try {
      googleUser = await _googleSignIn.signIn();

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } catch (_) {
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        // TODO investigate when Google sign out should be called
        // _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
*/