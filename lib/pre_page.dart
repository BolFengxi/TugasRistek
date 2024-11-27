import 'package:flutter/material.dart';
import 'package:tugas_ristek/login_page.dart';

class PrePage extends StatelessWidget {
  const PrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFFFFFFF),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            RistekLogo(),
            SizedBox(
              height: 50,
            ),
            RistekText(),
            SizedBox(
              height: 50,
            ),
            NextButton()
          ],
        ),
      )),
    );
  }
}

class RistekLogo extends StatelessWidget {
  const RistekLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 124.99,
          margin: const EdgeInsets.fromLTRB(0, 50, 225, 0),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/RistekLogoUngu.png'),
          )),
        )
      ],
    );
  }
}

class RistekText extends StatelessWidget {
  const RistekText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
          child: const Text(
            'RISTEK Pay',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Color(0xFF5038BC)),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 90, 0),
          child: const Text(
            '#RemarkableEscalation',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.55,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LoginPage(
                      userDatabase: {},
                    )));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF5038BC),
          minimumSize: const Size(295, 44),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Text('Next',
          style: TextStyle(color: Colors.white, fontFamily: "poppins")),
    );
  }
}
