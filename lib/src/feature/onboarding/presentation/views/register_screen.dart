import 'package:flutter/material.dart';
import 'package:pretium/src/feature/core/route/app_routes.dart';
import 'package:pretium/src/feature/core/shared/app_text_field.dart';
import 'package:pretium/src/feature/core/shared/loading_button.dart';
import 'package:pretium/src/feature/core/shared/widget_extensions.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/core/typography/typography.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 20.0.spacingH,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: AppColors.primary),
                      ),
                      Text('Create Account', style: AppTextStyle.headline1B),
                      10.0.spacingH,
                      Text(
                        'Simplify your crypto payment with us',
                        style: AppTextStyle.formTextC,
                      ),
                    ],
                  ),
                ),

                40.0.spacingH,
                AppTextField(
                  label: 'First Name',
                  hint: 'Enter your email address',
                  prefixIcons: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.person_outline),
                  ),
                  type: TextInputType.text,
                ),
                15.0.spacingH,
                AppTextField(
                  label: 'Last Name',
                  hint: 'Enter your email address',
                  prefixIcons: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.person_outline),
                  ),
                  type: TextInputType.text,
                ),
                15.0.spacingH,
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
                10.0.spacingH,
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
                    Text(
                      'Accept terms and conditions',
                      style: AppTextStyle.formText.copyWith(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                30.0.spacingH,
                LoadingButton(
                  isLoading: false,
                  onPressed: () {},
                  child: Text(
                    'Create account',
                    style: AppTextStyle.pryBtnStyle,
                  ),
                ),
                30.0.spacingH,
                GestureDetector(
                  onTap: () {
                    pop(context);
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: AppTextStyle.formTextC,
                        ),
                        10.0.spacingW,
                        Text(
                          'Login',
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
