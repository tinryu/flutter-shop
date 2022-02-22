import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Đăng Ký'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "enter username", labelText: "Họ và Tên"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Họ và Tên không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "enter email", labelText: "Email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "enter password", labelText: "Mật khẩu"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mật khẩu không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "enter adress", labelText: "Địa chỉ"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Địa chỉ không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "enter phone", labelText: "Số điện thoại"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Số điện thoại không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Material(
                      color: context.theme.buttonColor,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () => print('dang ky'),
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            "Đăng Ký".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Khi đăng ký là bạn đã chấp nhận '),
                            InkWell(
                              child: Text(
                                'điều khoản sủ dụng',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
