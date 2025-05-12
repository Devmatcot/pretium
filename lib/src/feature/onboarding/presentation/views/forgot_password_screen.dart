import 'package:flutter/material.dart';
import 'package:pretium/src/feature/core/route/app_routes.dart';
import 'package:pretium/src/feature/core/shared/app_text_field.dart';
import 'package:pretium/src/feature/core/shared/loading_button.dart';
import 'package:pretium/src/feature/core/shared/widget_extensions.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/core/typography/typography.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      20.0.spacingH,
                      Text('Forgot Password', style: AppTextStyle.headline1B),
                      10.0.spacingH,
                      Text(
                        'Enter your email to received password reset code',
                        style: AppTextStyle.formTextC,
                      ),
                    ],
                  ),
                ),

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

                30.0.spacingH,
                LoadingButton(
                  isLoading: false,
                  onPressed: () {},
                  child: Text(
                    'Send Reset Code',
                    style: AppTextStyle.pryBtnStyle,
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
