// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../core/app_export.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onError,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 36.v,
                  bottom: 40.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sign up",
                      style: CustomTextStyles.titleLargePrimary22,
                    ),
                    SizedBox(height: 60.v),
                    Text(
                      "Name",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 6.v),
                    _buildName(context),
                    SizedBox(height: 16.v),
                    Text(
                      "Email",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 6.v),
                    _buildEmail(context),
                    SizedBox(height: 18.v),
                    Text(
                      "Create a password",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 4.v),
                    _buildPassword(context),
                    SizedBox(height: 18.v),
                    Text(
                      "Confirm password",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 4.v),
                    _buildConfirmpassword(context),
                    SizedBox(height: 63.v),
                    _buildSignUp(context),
                    SizedBox(height: 63.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: CustomTextStyles.bodyMediumffffffff,
                          ),
                          TextSpan(
                            text: "Log in",
                            style: CustomTextStyles.labelLargeffffffff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: nameController,
      hintText: "nailiik@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: emailController,
      hintText: "example@gmail.com",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: passwordController,
      hintText: "must be 8 characters",
      hintStyle: CustomTextStyles.bodyMediumInterPrimary,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: confirmpasswordController,
      hintText: "repeat password",
      hintStyle: CustomTextStyles.bodyMediumInterPrimary,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomOutlinedButton(
      width: 220.h,
      text: "Sign up",
    );
  }
}