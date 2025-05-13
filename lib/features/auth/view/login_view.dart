import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hci_project/features/auth/view/register_view.dart';
import 'package:hci_project/features/auth/view/widgets/custom_text_filed.dart';

import '../../../constant/colors.dart';
import '../../home/home_view.dart';
import '../view_model/auth_cubit.dart';
import '../view_model/auth_state.dart';
import 'forget_password_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          }
          if (state is RegisterFailureState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMsg)));
          }
        },
        builder: (context, state) {
          final cubit = AuthCubit.getCubit(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: cubit.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Image.asset("assets/images/Logo.png"),
                        const SizedBox(height: 24),
                        const SizedBox(height: 16),
                        CustomTextFormFiled(
                          controller: cubit.emailController,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.email),
                          ),
                          hintText: "Email",
                          isEmail: true,
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormFiled(
                          controller: cubit.passwordController,
                          isSecure: cubit.isSecure,
                          suffixIcon: IconButton(
                            onPressed: () => cubit.isSecurePass(),
                            icon:
                                cubit.isSecure
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                          ),
                          hintText: "Password",
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.lock),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordView()));
                            },
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(color: primaryColor,
                              fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              cubit.login(
                                email: cubit.emailController.text,
                                password: cubit.passwordController.text,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(361, 56),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xff5669FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 2),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterView(),
                                  ),
                                );
                              },
                              child: Text(
                                "Create account",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        const SizedBox(height: 16),
                        Row(
                          children: <Widget>[
                            const Expanded(
                              child: Divider(
                                color: primaryColor, // Customize the line color
                                thickness: 1.5, // Customize the line thickness
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                  color:
                                      primaryColor, // Customize the "Or" text color
                                  fontSize:
                                      16.0, // Customize the "Or" text size
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color:
                                    primaryColor, // Same color as the first divider
                                thickness:
                                    1.5, // Same thickness as the first divider
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        InkWell(
                          onTap: () {
                            cubit.signInWithGoogle();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ), // Rounded corners
                              border: Border.all(
                                color: primaryColor,
                                width: 1.5,
                              ), // Blue border
                              color: Colors.white, // Black background
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              mainAxisSize:
                                  MainAxisSize
                                      .min, // Make the row size to fit content
                              children: <Widget>[
                                Image.network(
                                  'https://www.google.com/favicon.ico', // Google "G" logo
                                  height: 24.0,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  'Login With Google',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset("assets/images/LR.png"),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset("assets/images/EG.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
