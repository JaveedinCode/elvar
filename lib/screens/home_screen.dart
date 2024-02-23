import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            'Elvar Bank',
            style: GoogleFonts.instrumentSans()
                .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bell))
          ]),
      drawer: Drawer(backgroundColor: Theme.of(context).primaryColorDark),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 18.0, bottom: 16.0, left: 10.0, right: 10.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 250.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(27)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF2193b0), Color(0xFF2193b0)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Elvar Bank',
                    style: GoogleFonts.instrumentSans()
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const FaIcon(FontAwesomeIcons.nfcSymbol)
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '4098 5834 4121 7412',
                        style: GoogleFonts.instrumentSans().copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      IconButton(
                        style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.copy),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '07/26',
                        style: GoogleFonts.instrumentSans().copyWith(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('CVV',
                          style: GoogleFonts.instrumentSans().copyWith(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Mr.Mirali Shamaxi',
                    style: GoogleFonts.instrumentSans()
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
