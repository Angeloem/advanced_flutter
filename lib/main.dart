import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Login UI',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: MyHomePage(title: 'Flutter Login'),
		);
	}
}

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key, this.title}) : super(key: key);
	
	final String title;
	
	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    final emailField = TextField(
		obscureText: false,
		decoration: InputDecoration(
			contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
			hintText: "Email",
			border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
		),
	);
    
    final passWordField = TextField(
		obscureText: true,
		decoration: InputDecoration(
			contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
			hintText: 'Password',
			hasFloatingPlaceholder: true,
			border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
		),
	);
    final loginButton = Material(
		elevation: 5,
		borderRadius: BorderRadius.circular(30),
		color: Color(0xff01A0d1),
		child: MaterialButton(
			minWidth: MediaQuery.of(context).size.width,
			padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
			onPressed: () {},
			child: Text("Login",
				textAlign: TextAlign.center,
			),
		),
	);
    
    return Scaffold(
		body: Center(
			child: Container(
				color: Colors.white,
				child: Padding(
					padding: const EdgeInsets.all(36),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							SizedBox(
								height: 155.0,
								child: Image.asset(
									"assets/ema.jpg",
									fit: BoxFit.contain,
									filterQuality: FilterQuality.low,
								),
							),
							SizedBox(height: 100.0),
							emailField,
							SizedBox(height: 15.0,),
							passWordField,
							SizedBox(height: 15.0,),
							loginButton,
							SizedBox(height: 15.0,)
						],
					),
				),
			),
		),
	);
  }
}
