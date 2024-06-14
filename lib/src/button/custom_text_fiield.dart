// import 'package:checkbox_with_text/checkbox_with_text.dart';
// import 'package:flutter/material.dart';
// import 'package:login_textfield/login_textfield.dart';

// class CustomFilledButton extends StatelessWidget {
//   final IconData? icon;
//   final ButtonStyle? buttonStyle;
//   final double? iconSize;
//   final Color? iconColor;

//   final VoidCallback? onPressed;
//   final String? buttonText;
//   final double? textFontSize;
//   final Color? textColor;
//   final WidgetStateProperty<Color?>? buttonColor;
//   final FontWeight? textFontWeight;

//   final String? checkButtonText;

//   final String? HeaderText;

//   final TextEditingController? Controller;

//   CustomFilledButton({
//     super.key,
//     this.icon,
//     this.buttonStyle,
//     this.iconSize,
//     this.iconColor,
//     this.onPressed,
//     this.buttonText,
//     this.textFontSize,
//     this.textFontWeight,
//     this.textColor,
//     this.buttonColor,
//     this.HeaderText,
//     this.Controller,
//     this.checkButtonText,
//   }) : assert(icon != null || buttonText != null,
//             'At least one value (icon or buttonText) must be provided.');

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return Column(
//       children: [
//         FilledButton(
//           style: ButtonStyle(
//             padding: WidgetStateProperty.all(
//                 EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
//             backgroundColor:
//                 buttonColor ?? WidgetStateProperty.all<Color>(Colors.blue),
//             shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(
//                     6.0), // Rectangular shape with rounded corners
//               ),
//             ),
//           ).merge(buttonStyle),
//           onPressed: onPressed,
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               if (icon != null)
//                 FittedBox(
//                   child: Icon(icon, size: iconSize, color: iconColor),
//                 ),
//               if (icon != null && buttonText != null)
//                 SizedBox(
//                     width: size.width * .02), // Space between icon and text
//               if (buttonText != null)
//                 FittedBox(
//                     child: Text(
//                   buttonText ?? "",
//                   style: TextStyle(
//                     fontSize: textFontSize ?? 15,
//                     fontWeight: textFontWeight ?? FontWeight.w500,
//                     color: Colors.black,
//                   ),
//                 )),
//             ],
//           ),
//         ),
//         //  CheckboxWidget(isChecked: true, onChanged: (bool? value) {  }, text:"amos" ,filledButtonText: checkButtonText??"",),
//         LoginTextfield(
//           controller: Controller,
//           headerName: HeaderText,
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/nexteon_group_packages.dart';



class PackageChecking extends StatelessWidget {
  const PackageChecking({super.key});

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
        //   SizedBox(
        //  width:size.width * 0.1,
        //   ),
          Padding(
            padding: const EdgeInsets.only(left: 100,right: 100),
            child: Container(
              
            width:500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                   height: size.height * 0.25,
                  ),
                  CustomText(
                    text: "Welcome back",
                    style: MyTextSTyles.mainText,
                  ),
                  CustomText(
                    text: "Please enter Your details",
                    style: MyTextSTyles.subText,
                  ),
                  CustomLoginTextField(text: "Email address"),
                  CustomLoginTextField(text: "password"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckboxWithText(
                        isChecked: true,
                        onChanged: (bool? value) {},
                        text: 'Reminder me',
                      ),
                      CustomTextButton(
                        onPressed: () {},
                        buttonText: "Forget password ",
                        // textFontWeight: FontWeight.w500,
                        // textFontSize: 18,
                        textColor: MyColors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: CustomFilledButton(
                        buttonText: "Login",
                      )),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Dont have an account",
                      ),
                      CustomTextButton(
                        buttonText: "Sign up",
                        underline: true,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}

