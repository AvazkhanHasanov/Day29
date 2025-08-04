import 'package:day_29_vazifa/core/client.dart';
import 'package:day_29_vazifa/core/utils/colors.dart';
import 'package:day_29_vazifa/core/utils/icons.dart';
import 'package:day_29_vazifa/features/authentication/login_page/widgets/app_bar_login.dart';
import 'package:day_29_vazifa/features/authentication/login_page/pages/recipe_login_container.dart';
import 'package:day_29_vazifa/features/authentication/login_page/pages/sign_up.dart';
import 'package:day_29_vazifa/features/authentication/login_page/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<String> login({required String login, required String password}) async {
  var response = await dio.post(
    '/auth/login',
    data: {"login": login, "password": password},
  );
  if (response.statusCode != 200) {
    throw Exception(response.data);
  }
  return response.data["accessToken"];
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      appBar: AppBarLogin(
        title: 'Login',
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    RecipeTextFormField(
                      controller: emailController,
                      label: 'Email',
                      hintText: 'example@example.com',
                      validator: (value) {
                        final emailRegex = RegExp(
                          r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
                        );
                        if (value == null || value.isEmpty) {
                          return 'Joyni To`ldirish shart';
                        } else if (!emailRegex.hasMatch(value)) {
                          return 'email Farmat noto`g`ri';
                        }
                        return null;
                      },
                    ),
                    RecipeTextFormField(
                      controller: passwordController,
                      label: 'Password',
                      hintText: '12345678',
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Joyni To`ldirish shart';
                        } else if (6 <= value.length && value.length >= 10) {
                          return 'Parol 6 xonalidan yuqori va 10 xonalidan kichkina bo`lishi kerak';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 89.h,
              ),
              RecipeLoginContainer(
                text: 'Log in',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      final token = await login(
                        login: emailController.text,
                        password: passwordController.text,
                      );
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(token)));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Xatolik: ${e.toString()}')),
                      );
                    }
                  }
                },
              ),
              SizedBox(
                height: 27.h,
              ),
              RecipeLoginContainer(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 57.h,
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'League',
                  color: AppColors.brownF9,
                ),
              ),
              SizedBox(
                height: 74.h,
              ),
        
              Text(
                'or sign up with',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  fontFamily: 'League',
                  color: AppColors.brownF9,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(AppIcons.instagram),
                    SvgPicture.asset(AppIcons.google),
                    SvgPicture.asset(AppIcons.facebook),
                    SvgPicture.asset(AppIcons.massager),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'Don`t have an account? Sign Up',
                style: TextStyle(
                  fontFamily: 'League',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: AppColors.brownF9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
