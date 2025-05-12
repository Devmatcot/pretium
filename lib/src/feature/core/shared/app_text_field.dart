import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pretium/src/feature/core/shared/widget_extensions.dart';
import 'package:pretium/src/feature/core/theme/colors.dart';
import 'package:pretium/src/feature/core/typography/typography.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final String label;
  final bool isPassword;
  final String? title;
  final bool fill;
  final bool obscured;
  final bool? readOnly;
  final int? maxLines;
  final bool isAmount;
  final TextStyle? hintStyle;
  final TextInputType type;
  final Color? fillColor;
  final TextEditingController? controller;
  final Widget? prefixIcons;
  final List<TextInputFormatter>? formater;
  final Widget? surfixIcons;
  final int? maxLenth;
  final double? radius;
  final FocusNode? focusNode;
  final TextStyle? style;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onEditingComplete;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    required this.hint,
    required this.label,
    this.prefixIcons,
    this.surfixIcons,
    this.formater,
    this.maxLines = 1,
    this.controller,
    this.maxLenth,
    this.radius,
    this.hintStyle,
    this.style,
    this.fill = false,
    this.isAmount = false,
    this.onEditingComplete,
    this.focusNode,
    this.readOnly = false,
    this.isPassword = false,
    this.obscured = false,
    this.fillColor,
    this.contentPadding,
    this.validator,
    this.onChange,
    this.onSubmitted,
    required this.type,
    this.title,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColors.primary,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Text(widget.title ?? '', style: AppTextStyle.caption),
          if (widget.title != null) 5.0.spacingH,
          TextFormField(
            controller: widget.controller,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onSubmitted,
            onEditingComplete: widget.onEditingComplete,
            maxLines: widget.maxLines,
            onChanged: widget.onChange,
            validator: widget.validator,
            inputFormatters: widget.formater,
            maxLength: widget.maxLenth,
            style:
                widget.style ??
                AppTextStyle.subtitleStyle.copyWith(
                  color: AppColors.black,
                  fontWeight: AppFontWeight.regular,
                ),
            cursorColor: AppColors.black,
            cursorHeight: 20,
            obscureText: widget.isPassword ? !isVisible : widget.obscured,
            keyboardType: widget.type,
            readOnly: widget.readOnly!,
            decoration: AppTextFieldDecoration(),
          ),
        ],
      ),
    );
  }

  InputDecoration AppTextFieldDecoration() {
    double radius = widget.radius ?? 12;
    return InputDecoration(
      hintText: widget.hint,
      labelText: widget.label,
      hintStyle:
          widget.hintStyle ??
          AppTextStyle.formText.copyWith(color: AppColors.hintGrey),
      counterText: "",
      filled: widget.fill,
      prefixText: widget.isAmount ? '₦' : null,
      prefixStyle: TextStyle(
        fontFamily: 'Arial',
        fontWeight: AppFontWeight.medium,
        fontSize: 15.sp,
      ),
      prefixIcon: widget.prefixIcons,
      prefixIconConstraints: BoxConstraints(maxHeight: 40.h, maxWidth: 55.h),
      fillColor: widget.fillColor ?? AppColors.greyLight,
      suffixIcon:
          widget.isPassword
              ? InkWell(
                child: Icon(
                  isVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.subTitleColor,
                ),
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              )
              : widget.surfixIcons,
      contentPadding:
          widget.contentPadding ??
          const EdgeInsets.all(
            20,
          ).copyWith(left: widget.prefixIcons != null ? 10 : 25).r,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(color: AppColors.primary.withOpacity(0.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(
          color: !widget.fill ? AppColors.primary : AppColors.greyBlack,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(color: AppColors.black.withOpacity(0.3)),
      ),
    );
  }
}
