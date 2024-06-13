import 'package:checkbox_with_text/checkbox_with_text.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final IconData? icon;
  final ButtonStyle? buttonStyle;
  final double? iconSize;
  final Color? iconColor;

  final VoidCallback? onPressed;
  final String? buttonText;
  final double? textFontSize;
  final Color? textColor;
  final WidgetStateProperty<Color?>? buttonColor;
  final FontWeight? textFontWeight;
   final String? chekText;
   
     final IconData?  checkIcon;
     
       final String? checkButtonText;

  const CustomFilledButton({
    super.key,
    this.icon,
    this.buttonStyle,
    this.iconSize,
    this.iconColor,
    this.onPressed,
    this.buttonText,
    this.textFontSize,
    this.textFontWeight,
    this.textColor,
    this.buttonColor, required this.chekText, this.checkIcon, this.checkButtonText,
  }) : assert(icon != null || buttonText != null,
            'At least one value (icon or buttonText) must be provided.');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   
    return Column(
      children: [
        FilledButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
            backgroundColor: buttonColor ??
                WidgetStateProperty.all<Color>(
                  Colors.blue),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    6.0), // Rectangular shape with rounded corners
              ),
            ),
          ).merge(buttonStyle),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                FittedBox(
                  child: Icon(icon, size: iconSize, color: iconColor),
                ),
              if (icon != null && buttonText != null)
                SizedBox(width: size.width * .02), // Space between icon and text
              if (buttonText != null)
                FittedBox(
                    child: Text(
                  buttonText ?? "",
                  style: TextStyle(
                    fontSize: textFontSize??15,
                    fontWeight: textFontWeight??FontWeight.w500,
                    color: Colors.black ,
                  ),
                )),
            ],
          ),
        ),
         CheckboxWidget(isChecked: true, onChanged: (bool? value) {  }, text:chekText??"" ,filledButtonIcon: checkIcon??"",filledButtonText: checkButtonText??"",)
        
      ],
    );
  }
}
