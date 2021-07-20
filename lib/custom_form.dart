import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';
import 'styles/app_sizes.dart';
import 'styles/app_text_styles.dart';

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: PageView(
              controller: _controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: AppSizes.betweenObjects),
                    Text(
                      "Que bom ver você por aqui!\nConte-nos, quem é você!?",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleLabelStyle,
                    ),
                    SizedBox(height: AppSizes.betweenObjects),
                    CustomTextFormField(
                      labelText: "Nome Completo",
                      hintText: "Insira seu nome",
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: AppSizes.betweenObjects),
                    CustomTextFormField(
                      labelText: "Mas pode me chamar de",
                      hintText: "Como gostaria de ser chamado?",
                      keyboardType: TextInputType.name,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: AppSizes.betweenObjects),
                    Text(
                      "Que bom ver você por aqui!\nConte-nos, quem é você!?",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleLabelStyle,
                    ),
                    SizedBox(height: AppSizes.betweenObjects),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
