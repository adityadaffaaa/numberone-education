import 'package:flutter/material.dart';
import 'package:flutter_education/screens/main_screen.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/typography.dart' as app_typo;
import 'package:flutter_education/utils/images.dart' as app_img;
import 'package:flutter_education/widgets/button_primary.dart';
import 'package:flutter_education/widgets/custom_appbar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameCtrl = TextEditingController();
    final TextEditingController emailCtrl = TextEditingController();
    final TextEditingController passwordCtrl = TextEditingController();

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: app_color.white,
      appBar: customAppBar(context, false),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Lorem Ipsum',
                  textAlign: TextAlign.center,
                  style: app_typo.heading2,
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    FieldInput(
                      inputCtrl: nameCtrl,
                      labelText: 'Name',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    FieldInput(
                      inputCtrl: emailCtrl,
                      labelText: 'Email',
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    FieldInput(
                      inputCtrl: passwordCtrl,
                      isPassword: true,
                      labelText: 'Password',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const RememberSection(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Lorem Ipsum?',
                            style: app_typo.titleText15
                                .copyWith(color: app_color.secondary),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 52),
                      child: ButtonPrimary(
                          color: app_color.secondary,
                          text: 'Sign In',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return MainScreen();
                              },
                            ));
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    Text(
                      'Etiam mollis metus non purus faucibus?',
                      style: app_typo.titleText14.copyWith(
                          color: app_color.grey.withOpacity(0.7),
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'New Password',
                        style: app_typo.titleText15
                            .copyWith(color: app_color.secondary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FieldInput extends StatelessWidget {
  const FieldInput({
    Key? key,
    required this.inputCtrl,
    this.isPassword = false,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController inputCtrl;
  final bool isPassword;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: inputCtrl,
          obscureText: isPassword,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: app_color.black),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ],
    );
  }
}

class RememberSection extends StatefulWidget {
  const RememberSection({super.key});

  @override
  State<RememberSection> createState() => _RememberSectionState();
}

class _RememberSectionState extends State<RememberSection> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return app_color.primary;
    }
    return app_color.primary.withOpacity(0.1);
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: app_color.secondary,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          'Remember',
          style: app_typo.titleText15,
        )
      ],
    );
  }
}
