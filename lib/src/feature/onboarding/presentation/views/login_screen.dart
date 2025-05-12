import 'package:flutter/material.dart';
import 'package:pretium/src/feature/core/route/app_routes.dart';
import 'package:pretium/src/feature/core/shared/app_text_field.dart';
import 'package:pretium/src/feature/core/shared/loading_button.dart';
import 'package:pretium/src/feature/core/shared/widget_extensions.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/core/typography/typography.dart';
import 'package:pretium/src/feature/onboarding/presentation/views/forgot_password_screen.dart';
import 'package:pretium/src/feature/onboarding/presentation/views/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                40.0.spacingH,
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.wallet, size: 30, color: AppColors.primary),
                ),
                20.0.spacingH,

                Text('Welcome Back!', style: AppTextStyle.headline1B),
                10.0.spacingH,

                Text('Sign to continue', style: AppTextStyle.formTextC),
                40.0.spacingH,

                AppTextField(
                  label: 'Email',
                  hint: 'Enter your email address',
                  prefixIcons: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.mail_outline),
                  ),
                  type: TextInputType.emailAddress,
                ),
                15.0.spacingH,
                AppTextField(
                  label: 'Password',
                  hint: 'Enter your password',
                  type: TextInputType.text,
                  isPassword: true,
                  prefixIcons: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.lock_outline),
                  ),
                ),
                20.0.spacingH,
                Row(
                  children: [
                    Checkbox.adaptive(
                      activeColor: AppColors.primary,
                      // checkColor: AppColors.white,
                      value: isCheck,
                      onChanged: (value) {
                        isCheck = value!;
                        setState(() {});
                      },
                    ),
                    Text('Remember me', style: AppTextStyle.formTextC),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        pushTo(context, ForgotPassword());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyle.formText.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                40.0.spacingH,
                LoadingButton(
                  isLoading: false,
                  onPressed: () {
                    // pushTo(context, RegisterScreen());
                  },
                  child: Text('Login', style: AppTextStyle.pryBtnStyle),
                ),
                30.0.spacingH,
                GestureDetector(
                  onTap: () {
                    pushTo(context, RegisterScreen());
                  },
                  child: Container(
                    color: AppColors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: AppTextStyle.formTextC,
                        ),
                        10.0.spacingW,
                        Text(
                          'Sign up',
                          style: AppTextStyle.secondaryButtonStyle.copyWith(
                            color: AppColors.primary,
                            fontWeight: AppFontWeight.bold,
                          ),
                        ),
                        5.0.spacingW,
                        // SvgWidget(AssetConstants.shortarrow)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
