//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hci_project/features/auth/view/widgets/custom_text_filed.dart';
//
// import '../../../constant/colors.dart';
// import '../../home/home_view.dart';
// import '../view_model/auth_cubit.dart';
// import '../view_model/auth_state.dart';
// import 'login_view.dart';
//
// class RegisterView extends StatelessWidget {
//   const RegisterView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => AuthCubit(),
//       child: BlocConsumer<AuthCubit, AuthState>(
//         listener: (context, state) {
//           if (state is RegisterSuccessState) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomeView()),
//             );
//           }
//           if (state is RegisterFailureState) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text(state.errorMsg)),
//             );
//           }
//         },
//         builder: (context, state) {
//           final cubit = AuthCubit.getCubit(context);
//           return Scaffold(
//             body: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Form(
//                   key: cubit.formKey,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Text(
//                               "Register",
//                               style: TextStyle(
//                                   fontSize: 22, fontWeight: FontWeight.w500),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 40),
//                         Image.asset("assets/images/Logo.png"),
//                         const SizedBox(height: 24),
//                         CustomTextFormFiled(
//                           controller: cubit.nameController,
//                           hintText: " Name",
//                           prefixIcon: IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.person),
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         CustomTextFormFiled(
//                           controller: cubit.emailController,
//                           prefixIcon: IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.email),
//                           ),
//                           hintText: "Email",
//                           isEmail: true,
//                         ),
//                         const SizedBox(height: 16),
//                         CustomTextFormFiled(
//                           controller: cubit.passwordController,
//                           isSecure: cubit.isSecure,
//                           suffixIcon: IconButton(
//                             onPressed: () => cubit.isSecurePass(),
//                             icon: cubit.isSecure
//                                 ? const Icon(Icons.visibility_off)
//                                 : const Icon(Icons.visibility),
//                           ),
//                           hintText: "Password",
//                           prefixIcon: IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.lock),
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         CustomTextFormFiled(
//                           controller: cubit.confirmPasswordController,
//                           isSecure: cubit.isSecure,
//                           suffixIcon: IconButton(
//                             onPressed: () => cubit.isSecurePass(),
//                             icon: cubit.isSecure
//                                 ? const Icon(Icons.visibility_off)
//                                 : const Icon(Icons.visibility),
//                           ),
//                           hintText: "Confirm Password",
//                           prefixIcon: IconButton(
//                             onPressed: () {},
//                             icon: const Icon(Icons.lock),
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         ElevatedButton(
//                           onPressed: () {
//                             if (cubit.formKey.currentState!.validate()) {
//                               if (cubit.passwordController.text !=
//                                   cubit.confirmPasswordController.text) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                       content:
//                                       Text('كلمة المرور غير متطابقة')),
//                                 );
//                                 return;
//                               }
//
//                               cubit.register(
//                                 name: cubit.nameController.text,
//                                 email: cubit.emailController.text,
//                                 password: cubit.passwordController.text,
//                               );
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(361, 56),
//                             foregroundColor: Colors.white,
//                             backgroundColor: const Color(0xff5669FF),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(16.0),
//                             ),
//                           ),
//                           child: const Text(
//                             'Create Account',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text("Already have an account?"),
//                             InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginView()),
//                                 );
//                               },
//                               child: Text("Login",
//                                   style: TextStyle(color: primaryColor)),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 16),
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: primaryColor),
//                             borderRadius: BorderRadius.circular(16.0),
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               GestureDetector(
//                                   onTap: () {},
//                                   child: Image.asset("assets/images/LR.png")),
//                               const SizedBox(width: 10),
//                               GestureDetector(
//                                   onTap: () {},
//                                   child: Image.asset("assets/images/EG.png")),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hci_project/features/auth/view/widgets/custom_text_filed.dart';

import '../../../constant/colors.dart';
import '../../home/home_view.dart';
import '../view_model/auth_cubit.dart';
import '../view_model/auth_state.dart';
import 'login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is RegisterSuccessState) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          }
          if (state is RegisterFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMsg)),
            );
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
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Image.asset("assets/images/Logo.png"),
                        const SizedBox(height: 24),
                        CustomTextFormFiled(
                          controller: cubit.nameController,
                          hintText: " Name",
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person),
                          ),
                        ),
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
                            icon: cubit.isSecure
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
                        CustomTextFormFiled(
                          controller: cubit.confirmPasswordController,
                          isSecure: cubit.isSecure,
                          suffixIcon: IconButton(
                            onPressed: () => cubit.isSecurePass(),
                            icon: cubit.isSecure
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                          hintText: "Confirm Password",
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.lock),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              if (cubit.passwordController.text !=
                                  cubit.confirmPasswordController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                      Text('Passwords do not match')),
                                );
                                return;
                              }

                              cubit.register(
                                name: cubit.nameController.text,
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
                            'Create Account',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginView()),
                                );
                              },
                              child: Text("Login",
                                  style: TextStyle(color: primaryColor)),
                            ),
                          ],
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
                                  child: Image.asset("assets/images/LR.png")),
                              const SizedBox(width: 10),
                              GestureDetector(
                                  onTap: () {},
                                  child: Image.asset("assets/images/EG.png")),
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
