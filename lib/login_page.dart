import 'package:flutter/material.dart';
import 'package:tugas_ristek/create_account.dart';
import 'package:tugas_ristek/main_page.dart';

class LoginPage extends StatefulWidget {
  final Map<String, String> userDatabase;
  const LoginPage({super.key, required this.userDatabase});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _errorMessage = '';

  void login() {
    String username = nameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'Username dan Password tidak boleh kosong';
      });
      return;
    }
    if (widget.userDatabase.containsKey(username)) {
      if (widget.userDatabase[username] == password) {
        setState(() {
          _errorMessage = 'Login Berhasil';
        });

        if (mounted) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MainPage()));
        }
      } else {
        setState(() {
          _errorMessage = 'Password Salah';
        });
      }
    } else {
      setState(() {
        _errorMessage = 'Username tidak ditemukan';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF5038BC),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 30),
                  child: Container(
                    height: 150.5,
                    width: 99,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/RistekLogo.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(44, 25, 0, 10),
                      child: SizedBox(
                          width: 39,
                          height: 17,
                          child: Text(
                            'Nama',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: 'Inter'),
                          )),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: SizedBox(
                    width: 295,
                    height: 44,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(44, 25, 0, 10),
                      child: SizedBox(
                          width: 66,
                          height: 17,
                          child: Text('Password',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ))),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: SizedBox(
                    width: 295,
                    height: 44,
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFFFFFFF)),
                            borderRadius: BorderRadius.circular(12),
                          )),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: login,
                  child: const Text('Login'),
                ),
                const SizedBox(height: 20),
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: const TextStyle(color: Color(0xFFEE4545)),
                  ),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: const Color(0xFFFFFFFF)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountPage(
                              userDatabase: widget.userDatabase)),
                    );
                  },
                  child: const Text('Create Account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
