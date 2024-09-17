import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/confirm_password_input.dart';
import 'package:socialice/widgets/or_sign_with.dart';
import 'package:socialice/widgets/password_input.dart';
import 'package:socialice/widgets/sign_oaut2_items.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _surnameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _surnameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submitRegister() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("name: ${_nameController.text}");
      print("surname: ${_surnameController.text}");
      print("email: ${_emailController.text}");
      print("password: ${_passwordController.text}");
      print("confirmPassword: ${_confirmPasswordController.text}");

      // TODO: create firebase user
      // TODO: create db user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Welcome to Socialize!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFormField(
                                    controller: _nameController,
                                    maxLength: 30,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Name cannot be empty';
                                      } else if (value.length > 30) {
                                        return 'Name cannot exceed 30 characters';
                                      }
                                      return null;
                                    },
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.fromLTRB(10, 14, 0, 14),
                                        counter: SizedBox.shrink(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: AppColors.greyLightColor,
                                              width: 1,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColors.greyLightColor,
                                                width: 1)),
                                        isCollapsed: true,
                                        hintText: 'Name',
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greyLightColor,
                                        ))),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Surname',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFormField(
                                    controller: _surnameController,
                                    maxLength: 30,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Name cannot be empty';
                                      } else if (value.length > 30) {
                                        return 'Name cannot exceed 30 characters';
                                      }
                                      return null;
                                    },
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.fromLTRB(10, 14, 0, 14),
                                        counter: SizedBox.shrink(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: AppColors.greyLightColor,
                                              width: 1,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColors.greyLightColor,
                                                width: 1)),
                                        isCollapsed: true,
                                        hintText: 'Garcia',
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greyLightColor,
                                        ))),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                          controller: _emailController,
                          maxLength: 100,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email cannot be empty';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$')
                                .hasMatch(value)) {
                              return 'Enter a valid email address';
                            }
                            return null;
                          },
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 14, 0, 14),
                              counter: SizedBox.shrink(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: AppColors.greyLightColor,
                                    width: 1,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              isCollapsed: true,
                              hintText: 'e.g johndoe@gmail.com',
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyLightColor,
                              ))),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      PasswordInput(
                          hintText: 'Password',
                          passwordController: _passwordController),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      ConfirmPasswordInput(
                          hintText: 'Confirm Password',
                          passwordController: _passwordController,
                          confirmPasswordController:
                              _confirmPasswordController),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                BlackContainerButton(
                  text: 'Register',
                  action: _submitRegister,
                ),
                SizedBox(
                  height: 32,
                ),
                OrSignWith(
                  method: 'Register',
                ),
                SizedBox(
                  height: 32,
                ),
                SignOauth2Items(),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/LoginScreen', (route) => false),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account already?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xFFC1C1CB),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
