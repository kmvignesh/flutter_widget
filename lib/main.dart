import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TermsAndConditionView(),
    );
  }
}

class TermsAndConditionView extends StatefulWidget {
  @override
  _TermsAndConditionViewState createState() => _TermsAndConditionViewState();
}

class _TermsAndConditionViewState extends State<TermsAndConditionView> {
  bool isTermsAccepted = false;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Text('Lorem ipsum dolor sit amet, putent dissentias vituperatoribus ad duo. Decore inimicus rationibus vel at, vim ne erant exerci explicari. Sea purto erant populo in. Iracundia argumentum mel in, nam sint soluta timeam cu. No sed purto utinam, vis nonumes ocurreret iracundia cu, ne elitr postea dolores cum.\n\n' +
                  "Cu est vidisse tibique euripidis, falli viris incorrupte vim te, adipisci imperdiet ea eam. Pro splendide torquatos ea. In eam summo primis argumentum, cum ei graecis tractatos, te usu quot magna malorum. Mel at partem suscipiantur. Illum laudem maiestatis no eum, philosophia interpretaris at ius, vis ne discere accusam urbanitas.\n\n" +
                  "No vim eirmod scripserit. Te vel eius neglegentur instructior, vim ubique detraxit at. Eos in veniam eruditi tincidunt, ad nec adolescens adversarium. Aperiri euripidis consectetuer id sed, mea eu nullam oporteat. Vix te scripta volumus constituam. Nonumy atomorum per cu, et porro albucius dissentias est.\n\n" +
                  "Eros dicant vel te, lorem tempor ad vix, scripta perfecto ocurreret et duo. At ferri mnesarchum est. Ea magna debitis vivendo vix, duo esse meis mandamus ea. Eos elit dicit commodo et, eu dicta incorrupte mea. Nec iuvaret fierent adversarium in, an vel liber vulputate argumentum. Usu odio aliquip no, nec et omnes possim officiis.\n\n" +
                  "Eros dicant vel te, lorem tempor ad vix, scripta perfecto ocurreret et duo. At ferri mnesarchum est. Ea magna debitis vivendo vix, duo esse meis mandamus ea. Eos elit dicit commodo et, eu dicta incorrupte mea. Nec iuvaret fierent adversarium in, an vel liber vulputate argumentum. Usu odio aliquip no, nec et omnes possim officiis.\n\n" +
                  "Eros dicant vel te, lorem tempor ad vix, scripta perfecto ocurreret et duo. At ferri mnesarchum est. Ea magna debitis vivendo vix, duo esse meis mandamus ea. Eos elit dicit commodo et, eu dicta incorrupte mea. Nec iuvaret fierent adversarium in, an vel liber vulputate argumentum. Usu odio aliquip no, nec et omnes possim officiis.\n\n" +
                  "Eros dicant vel te, lorem tempor ad vix, scripta perfecto ocurreret et duo. At ferri mnesarchum est. Ea magna debitis vivendo vix, duo esse meis mandamus ea. Eos elit dicit commodo et, eu dicta incorrupte mea. Nec iuvaret fierent adversarium in, an vel liber vulputate argumentum. Usu odio aliquip no, nec et omnes possim officiis.\n\n" +
                  "Modo utamur imperdiet ut quo. Quem periculis euripidis nec ne, at iuvaret maiestatis elaboraret sea. Postea reprehendunt an nec. Per molestie scriptorem cu, eam illud consulatu moderatius id. Enim probatus expetenda ei pro, minimum platonem mel id."),
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (isChecked) {
                  setState(() {
                    isTermsAccepted = isChecked;
                  });
                },
                value: isTermsAccepted,
              ),
              Expanded(
                child: Text(
                    "By checking this accepting above mentioned terms and condition"),
              )
            ],
          ),
          hasError
              ? Text(
                  "Please accept terms and condition",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              : SizedBox(),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              "Accept and Continue",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              // TODO : Go to next page
              setState(() {
                hasError = !isTermsAccepted;
              });
            },
          )
        ],
      ),
    );
  }
}
