import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter_clone/utils/colors.dart';
import 'package:instagram_flutter_clone/widgets/text_field_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2,child: Container(),),
              // svg image
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
              // text field input for username
              TextFieldInput(
                textEditingController: _usernameController,
                hintText: 'Enter your username',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              // text field input for email
              TextFieldInput(
                textEditingController: _emailController,
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 24),
              // text field input for password
              TextFieldInput(
                textEditingController: _passwordController,
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                isPass: true,
              ),
              // text field input for bio
              TextFieldInput(
                textEditingController: _bioController,
                hintText: 'Enter your bio',
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              // button login
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(4)
                        ),
                      ),
                      color: blueColor
                  ),
                  child: const Text('Log in'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(flex: 2,child: Container(),),
              // Transitioning to signing up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text('Do you have an account?')
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: const Text(
                          ' Sign up.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
