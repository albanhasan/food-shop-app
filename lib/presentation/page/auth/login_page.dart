import 'package:bootcamp_food_shop/config/app_asset.dart';
import 'package:bootcamp_food_shop/config/app_color.dart';
import 'package:d_info/d_info.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  login() async {
    if (formKey.currentState!.validate()) {
      // bool success = await SourceUser.login(
      //   controllerEmail.text,
      //   controllerPassword.text,
      // );
      bool success = true;
      if (success) {
        DInfo.dialogSuccess('Berhasil Login');
        DInfo.closeDialog(actionAfterClose: () {
          //Get.off(() => Dashboard());
        });
      } else {
        DInfo.dialogError('Gagal Login');
        DInfo.closeDialog();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAsset.header,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? constraints.maxHeight - 250
                        : constraints.maxHeight,
                  ),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Form(
                          key: formKey,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                DView.spaceHeight(12),
                                Container(
                                  width: 90,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                DView.spaceHeight(),
                                Text(
                                  'Login Dulu',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                          color: AppColor.primary,
                                          fontWeight: FontWeight.bold),
                                ),
                                DView.spaceHeight(30),
                                TextFormField(
                                  controller: controllerEmail,
                                  validator: (value) =>
                                      value == '' ? 'Jangan Kosong' : null,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                      fillColor: AppColor.secondary,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      hintText: 'Email',
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 16,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: AppColor.dark,
                                        size: 24,
                                      )),
                                ),
                                DView.spaceHeight(30),
                                TextFormField(
                                  controller: controllerPassword,
                                  validator: (value) =>
                                      value == '' ? 'Jangan Kosong' : null,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: AppColor.secondary,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none),
                                      hintText: 'Password',
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 16,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: AppColor.dark,
                                        size: 24,
                                      )),
                                ),
                                DView.spaceHeight(30),
                                Material(
                                  color: AppColor.primary,
                                  borderRadius: BorderRadius.circular(8),
                                  child: InkWell(
                                    // onTap: () => login(),
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 16),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Belum Punya Akun? ',
                                style: TextStyle(fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: AppColor.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
    ;
  }
}
