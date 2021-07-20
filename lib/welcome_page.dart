import 'package:flutter/material.dart';
import 'custom_form.dart';
import 'styles/styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: AppSizes.betweenObjects),
          Text(
            "Seja bem vindo (a)\nao Health ID",
            textAlign: TextAlign.center,
            style: AppTextStyles.titleLabelStyle,
          ),
          SizedBox(height: AppSizes.betweenObjects),
          Text(
            "Lorem ipsum",
            textAlign: TextAlign.center,
            style: AppTextStyles.titleLabelStyle,
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomForm()),
                );
              },
              child: Text('cadastrar')),
          SizedBox(height: AppSizes.betweenObjects),
          Text(
            "Lorem ipsum",
            textAlign: TextAlign.center,
            style: AppTextStyles.titleLabelStyle,
          ),
          SizedBox(height: AppSizes.betweenObjects),
        ],
      ),
    );
  }
}
