
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit getCubit(BuildContext context) => BlocProvider.of(context);

  final FirebaseAuth auth = FirebaseAuth.instance;

  // Controllers
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isSecure = true;

  // Toggle password visibility
  void isSecurePass() {
    isSecure = !isSecure;
    emit(RegisterSecurePassState());
  }

  // Email/Password Registration
  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoadingState());
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.updateDisplayName(name);
      emit(RegisterSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(RegisterFailureState(e.message ?? "Registration failed."));
    } catch (e) {
      emit(RegisterFailureState("An unexpected error occurred."));
    }
  }

  // Email/Password Login
  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(LoginFailureState(e.message ?? "Login failed."));
    } catch (e) {
      emit(LoginFailureState("An unexpected error occurred."));
    }
  }

  // Google Sign-In
  Future<void> signInWithGoogle() async {
    try {
      emit(LoginLoadingState());

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Handle cancelation
      if (googleUser == null) {
        emit(LoginFailureState("Google sign-in canceled."));
        return;
      }

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await auth.signInWithCredential(credential);

      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(LoginFailureState(e.message ?? "Google sign-in failed."));
    } catch (e) {
      emit(LoginFailureState("Google sign-in error: $e"));
    }
  }
}
