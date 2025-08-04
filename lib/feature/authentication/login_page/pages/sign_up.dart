import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/feature/authentication/login_page/pages/app_bar_login.dart';
import 'package:day_29_vazifa/feature/authentication/login_page/pages/recipe_login_container.dart';
import 'package:day_29_vazifa/feature/authentication/login_page/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final TextEditingController fullNameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController mobilePhoneController = TextEditingController();
final TextEditingController dateOfBirthController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) =>  null,
      builder: (context, child) {
        return  Scaffold(
          backgroundColor: AppColors.beige,
          appBar: AppBarLogin(title: 'Sign Up'),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RecipeTextFormField(
                          label: 'Full Name',
                          hintText: 'John Doe',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }
                            return null;
                          },
                          controller: fullNameController,
                        ),
                        RecipeTextFormField(
                          label: 'Email',
                          hintText: 'example@example.com',
                          validator: (value) {
                            final emailRegex = RegExp(
                                r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }else if (!emailRegex.hasMatch(value)) {
                              return 'email Farmat noto`g`ri';
                            }
                            return null;
                          },
                          controller: emailController,
                        ),
                        RecipeTextFormField(
                          label: 'Mobile Number',
                          hintText: '+ 123 456 789',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }
                            return null;
                          },
                          controller: mobilePhoneController,
                        ),
                        RecipeTextFormField(
                          label: 'Date Of Birth',
                          hintText: 'Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }
                            return null;
                          },
                          controller: dateOfBirthController,
                        ),
                        RecipeTextFormField(
                          isPassword: true,
                          label: 'Password',
                          hintText: '● ● ● ● ● ● ● ●',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }else if (6 <= value.length && value.length >= 10) {
                              return 'Parol 6 xonalidan yuqori va 10 xonalidan kichkina bo`lishi kerak';
                            }
                            return null;
                          },
                          controller: passwordController,
                        ),
                        RecipeTextFormField(
                          isPassword: true,
                          label: 'Confirm Password',
                          hintText: '● ● ● ● ● ● ● ●',
                          validator: (value) {

                            if (value == null || value.isEmpty) {
                              return 'to`ldirish shart';
                            }else if (6 <= value.length && value.length >= 10) {
                              return 'Parol 6 xonalidan yuqori va 10 xonalidan kichkina bo`lishi kerak';
                            }
                            return null;
                          },
                          controller: fullNameController,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:40.h ),
                  SizedBox(
                    width: 220.w,
                    child: Text(
                      "By continuing, you agree toTerms of Use and Privacy Policy.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        fontFamily: 'League',
                        color: AppColors.brownF9,
                      ),
                    ),
                  ),
                  SizedBox(height:12.h ),
                  RecipeLoginContainer(text: 'Sign Up', onPressed: () {}),
                  SizedBox(height:12.h ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'League',
                        fontSize: 13,
                        color: AppColors.brownF9,
                      ),
                      children: [
                        TextSpan(
                          text: ' Log In',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'League',
                            fontWeight: FontWeight.w300,
                            color: AppColors.redPinkMain,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pop();
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
