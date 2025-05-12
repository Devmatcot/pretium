import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';

class LoadingButton extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final VoidCallback? onPressed;
  const LoadingButton({
    super.key,
    required this.child,
    this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColors.primary,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 1,
          disabledBackgroundColor: AppColors.primary.withOpacity(0.3),
          shadowColor: AppColors.primary.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10).r,
          ),
          backgroundColor: AppColors.primary,
          fixedSize: Size(MediaQuery.of(context).size.width, 60.h),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading ? const CupertinoActivityIndicator() : child,
      ),
    );
  }
}
