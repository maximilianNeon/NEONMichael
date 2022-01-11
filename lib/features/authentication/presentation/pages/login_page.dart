import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/element_entity.dart';
import 'package:neon_web/core/style/style.dart';
import 'package:neon_web/features/authentication/presentation/bloc/authentification_bloc.dart';

@injectable
class LoginPage extends StatelessWidget {
  
  LoginPage() : super();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthentificationBloc authentificationBloc = BlocProvider.of<AuthentificationBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Neon Mobbin"),
            verticalSpaceMedium(context: context),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 40, maxHeight: 40, maxWidth: 250, minWidth: 250),
              child: TextFormField(
                controller: emailController ,
                maxLines: 1,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: BorderSide(color: kColorGreyBorder)),
                  contentPadding: EdgeInsets.all(8),
                  hintText: "E-Mail",
                ),
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
              ),
            ),
            verticalSpaceMedium(context: context),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 40, maxHeight: 40, maxWidth: 250, minWidth: 250),
              child: TextFormField(
                controller: passwordController ,
                maxLines: 1,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: BorderSide(color: kColorGreyBorder)),
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Passwort",
                ),
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
              ),
            ),
            verticalSpaceMedium(context: context),
            GestureDetector(
            onTap: () {
             authentificationBloc.add(AuthentificationEvent.login(email: emailController.text, password: passwordController.text));
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: kColorLila, borderRadius: kBorderRadius_10),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: kColorWhite),
                ),
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
