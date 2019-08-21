import 'package:flutter/material.dart';

class NaughtyDraw extends StatelessWidget {
    final EdgeInsetsGeometry padding = EdgeInsets.all(10);
    final bgintensity = 40;

    @override
    Widget build(BuildContext context) => new Drawer(
                child: Material(
                    color: Color.fromARGB(250, bgintensity, bgintensity, bgintensity),
                    child: new ListView(
                        padding: const EdgeInsets.all(0.0),
                        children: <Widget>[
                            DrawerHeader(
                                child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 20),
                                        alignment: Alignment(-1, 1),
                                        child: Text('Options',
                                                style: Theme.of(context)
                                                        .textTheme
                                                        .title
                                                        .apply(color: Colors.black))),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                ),
                            ),
                            Padding(
                                padding: padding,
                                child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    keyboardAppearance: Brightness.light,
                                    scrollPadding: padding,
                                    decoration: InputDecoration(
                                            labelText: "Title",
                                            labelStyle:
                                                    TextStyle(color: Colors.white.withAlpha(200))),
                                ),
                            ),
                            Padding(
                                padding: padding,
                                child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    keyboardAppearance: Brightness.light,
                                    keyboardType: TextInputType.url,
                                    maxLines: 3,
                                    scrollPadding: padding,
                                    decoration: InputDecoration(
                                            labelText: "Url",
                                            labelStyle:
                                                    TextStyle(color: Colors.white.withAlpha(200))),
                                    onEditingComplete: () {},
                                ),
                            ),
                            MaterialButton(
                                    child: Text("Load", style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                        Navigator.pop(context);
                                    }),
                            Padding(
                                    padding: padding,
                                    child: Row(
                                        children: <Widget>[
                                            Expanded(
                                                child: TextField(
                                                    style: TextStyle(color: Colors.white),
                                                    keyboardAppearance: Brightness.light,
                                                    keyboardType: TextInputType.text,
                                                    maxLines: 1,
                                                    scrollPadding: padding,
                                                    decoration: InputDecoration(
                                                            labelText: "Login email/username",
                                                            labelStyle: TextStyle(
                                                                    color: Colors.white.withAlpha(200))),
                                                ),
                                            ),
                                            MaterialButton(
                                                    child: Icon(Icons.content_copy),
                                                    onPressed: () {
                                                        Scaffold.of(context).showSnackBar(
                                                                SnackBar(content: Text('Login copied')));
                                                    })
                                        ],
                                    )),
                            Padding(
                                padding: padding,
                                child: Row(
                                    children: <Widget>[
                                        Expanded(
                                            child: TextField(
                                                style: TextStyle(color: Colors.white),
                                                keyboardAppearance: Brightness.light,
                                                keyboardType: TextInputType.text,
                                                obscureText: true,
                                                maxLines: 1,
                                                scrollPadding: padding,
                                                decoration: InputDecoration(
                                                        labelText: "Password",
                                                        labelStyle:
                                                                TextStyle(color: Colors.white.withAlpha(200))),
                                            ),
                                        ),
                                        MaterialButton(
                                                child: Icon(Icons.content_copy),
                                                onPressed: () {
                                                    Scaffold.of(context).showSnackBar(
                                                            SnackBar(content: Text('Password copied')));
                                                })
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            );
}
