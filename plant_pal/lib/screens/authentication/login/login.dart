// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:plant_pal/routes/routes.dart';
import 'package:plant_pal/screens/authentication/signup/signup.dart';
import 'package:plant_pal/screens/home/home.dart';
import 'package:plant_pal/utils/app_colors.dart';
import 'package:plant_pal/utils/asset_images.dart';
import 'package:plant_pal/utils/sizebox.dart';
import 'package:plant_pal/widgets/custom_button.dart';
import 'package:plant_pal/widgets/pw_field.dart';
import 'package:plant_pal/widgets/text_field.dart';
import 'package:plant_pal/widgets/top_titles.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

  ///text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ///variables
    final size = MediaQuery.of(context).size;
    bool isVisible = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Center(
                      child: Image.asset(
                        AssetImages().appLogo,
                        width: size.width * 0.3,
                      ),
                    ),
                  ),

                  /////titles
                  Toptitles(
                    primary: "Login",
                    secondary: "Welcome back you've been missed",
                  ),
                  25.ph,

                  ////email password fields
                  CustomTextField(
                    prefixIcon: EvaIcons.emailOutline,
                    controller: emailController,
                    hintText: "Email",
                    keyboadType: TextInputType.emailAddress,
                  ),
                  CustomPasswordField(
                      textEditingController: passwordController,
                      isVisible: isVisible),
                  15.ph,


                  ///sign in button
                  ///
                  PrimaryButton(
                    text: "Sign in",
                    onPress: () {
                      Routes.push(HomeScreen(), context);
                                                //                   bool isValidated = signUpValidation(emailController.text,passwordController.text,nameController.text,phoneController.text);
                          // if (isValidated) {
                          //   bool isSignedUp = await FireBaseAuthHelper.instance.signUp(emailController.text,passwordController.text,nameController.text,context);
                          //   if (isSignedUp) {
                          //     Routes.push(const LoginScreen(), context);
                          //     showMessage("Account created sucessfully!");
                          //   }
                          // }
                    },
                  ),




                  ////dont have an account text and button
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?",style: TextStyle(fontSize: size.width * 0.045),),
                      TextButton(
                          onPressed: () {
                            Routes.push(const SignUpScreen(), context);
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.primaryColor,
                                decorationThickness: 2),
                          )
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
