import 'package:flutter/material.dart';
import 'package:tugas_ristek/login_page.dart';

class CreateAccountPage extends StatefulWidget {
  final Map<String, String> userDatabase;
  const CreateAccountPage({super.key, required this.userDatabase});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  late Map<String, String> modifiableDatabase;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    modifiableDatabase = Map.from(widget.userDatabase);
  }

  void _createAccount() {
    String username = nameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'nama dan Password tidak boleh kosong';
      });
      return;
    }
    if (modifiableDatabase.containsKey(username)) {
      setState(() {
        _errorMessage = 'Username sudah terdaftar';
      });
    } else {
      modifiableDatabase[username] = password;
      setState(() {
        _errorMessage = 'Akun berhasil dibuat!';
      });

      Future.delayed(const Duration(seconds: 1), () {
        if (!mounted) return;
        Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LoginPage(userDatabase: modifiableDatabase)));
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
                      width: 99,
                      height: 150.5,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/RistekLogo.png'),
                              fit: BoxFit.cover))),
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
                              borderRadius: BorderRadius.circular(12))),
                      obscureText: true,
                      obscuringCharacter: '*',
                    ),
                  ),
                ),
                const SizedBox(),
                ElevatedButton(
                    onPressed: _createAccount,
                    child: const Text('Create Account')),
                const SizedBox(height: 20),
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
