import 'package:flutter/material.dart';

import 'styles/app_sizes.dart';
import 'styles/app_colors.dart';
import 'styles/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final VoidCallback validator;

  const CustomTextFormField({
    @required this.labelText,
    @required this.hintText,
    @required this.keyboardType,
    this.validator,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 6, 28, 6),
            child: Text(
              widget.labelText,
              style: AppTextStyles.labelStyle,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.textFieldBackground,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: _controller,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(28, 0, 28, 0),
                hintText: widget.hintText,
                hintStyle: AppTextStyles.textFormFieldHintStyle,
                border: InputBorder.none,
              ),
              keyboardType: widget.keyboardType,
              // validator: (value) {
              //   if (value.isEmpty || !value.contains('@')) {
              //     return 'Informe um e-mail válido!';
              //   }
              //   return null;
              // },
              // onChanged: (value) => _authData['userEmail'] = value,
              // onSaved: (value) => _authData['userEmail'] = value,
            ),
          ),
        ],
      ),
    );
  }
}
