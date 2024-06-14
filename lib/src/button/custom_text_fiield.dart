// import 'package:flutter/material.dart';
// import 'package:nexteon_group_packages/nexteon_group_packages.dart';

// class PackageChecking extends StatelessWidget {
//   final String headerText;

//   final String subtext;

//   final emailController;

//   final String emailText;

//   final TextEditingController passwordController;

//   final String PasswordText;
  
//   final void Function() onpressed;

//   const PackageChecking(
//       {super.key,
//       required this.headerText,
//       required this.subtext,
//       required this.emailController,
//       required this.emailText,
//       required this.passwordController,
//       required this.PasswordText, required this.onpressed});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: size.height * 0.95,
//               width: size.width * 0.7,
//               color: Color(0xffE3F3FF),
//             ),
//           ),
//           //   SizedBox(
//           //  width:size.width * 0.1,
//           //   ),
//           Padding(
//             padding: const EdgeInsets.only(left: 100, right: 100),
//             child: Container(
//               width: 500,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: size.height * 0.25,
//                   ),
//                   CustomText(
//                     text: headerText,
//                     style: MyTextSTyles.mainText,
//                   ),
//                   CustomText(
//                     text: subtext,
//                     style: MyTextSTyles.subText,
//                   ),
//                   CustomLoginTextField(
//                     text: emailText,
//                     controller: emailController,
//                   ),
//                   CustomLoginTextField(
//                     text: PasswordText,
//                     controller: passwordController,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomCheckboxWithText(
//                         isChecked: true,
//                         onChanged: (bool? value) {},
//                         text: 'Reminder me',
//                       ),
//                       CustomTextButton(
//                         onPressed: onpressed,
//                         buttonText: "Forget password ",
//                         // textFontWeight: FontWeight.w500,
//                         // textFontSize: 18,
//                         textColor: MyColors.grey,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                       width: double.infinity,
//                       child: CustomFilledButton(
//                         buttonText: "Login",
//                       )),
//                   Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomText(
//                         text: "Dont have an account",
//                       ),
//                       CustomTextButton(
//                         buttonText: "Sign up",
//                         underline: true,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/nexteon_group_packages.dart';

class TextFieldConfig {
  final String labelText;
  final TextEditingController controller;

  TextFieldConfig({required this.labelText, required this.controller});
}

class PackageChecking extends StatelessWidget {
  final String headerText;
  final String subtext;
  final List<TextFieldConfig> textFieldConfigs;
  final void Function() onpressed;

  const PackageChecking({
    super.key,
    required this.headerText,
    required this.subtext,
    required this.textFieldConfigs,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height * 0.95,
              width: size.width * 0.7,
              color: Color(0xffE3F3FF),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.25,
                  ),
                  CustomText(
                    text: headerText,
                    style: MyTextSTyles.mainText,
                  ),
                  CustomText(
                    text: subtext,
                    style: MyTextSTyles.subText,
                  ),
                  ...textFieldConfigs.map((config) {
                    return CustomLoginTextField(
                      text: config.labelText,
                      controller: config.controller,
                    );
                  }).toList(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckboxWithText(
                        isChecked: true,
                        onChanged: (bool? value) {},
                        text: 'Reminder me',
                      ),
                      CustomTextButton(
                        onPressed: onpressed,
                        buttonText: "Forget password ",
                        textColor: MyColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CustomFilledButton(
                      buttonText: "Login",
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account",
                      ),
                      CustomTextButton(
                        buttonText: "Sign up",
                        underline: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

