import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:plus0ne/widgets/stateless/dynamicGraphic.dart';
import 'package:plus0ne/widgets/stateless/dialogueBox.dart';

class CreateEvent extends StatefulWidget{
    CreateEvent({Key key, this.title}) : super(key:key);
    final String title;
    @override
    CreateEventState createState() => new CreateEventState();
}

class CreateEventState extends State<CreateEvent> {
    @override
    Widget build(BuildContext context) {
        final String plus0neGraphics = "lib/resources/graphics/";
        final String plus0neIcons = "lib/resources/icons/";
        return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Stack(
                children: <Widget>[
                    new ListView(
                        children: <Widget>[
                            DynamicGraphic(
                                offset: 48.0,
                            ),
                            Container(
                                child: Image.asset(
                                    plus0neGraphics + "sunlightHorizon.png",
                                ),
                                color: Theme.of(context).primaryColor,
                            ),
                            Container(
                                child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    alignment: Alignment.topCenter,
                                    color: new Color(0xFFF1F1F1),
                                    child: Text("Good Afternoon!",
                                        style: Theme.of(context).textTheme.title,
                                    ),
                                ),
                            ),
                            Container(
                                child: new DialogueBox(
                                    text: "Welcome! To get started creating an event, simply just text me a few details.",
                                ),
                                color: new Color(0xFFF1F1F1),
                            ),
                        ],
                    ),
                    new Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: AppBar(
                            leading: new IconButton(
                                icon: new Image.asset(plus0neIcons + "plus0ne_Logo.png"),
                                tooltip: 'Returns to the home menu',
                                onPressed: null
                            ),
                            title: new Icon(
                                FeatherIcons.moon,
                                size: 2.0*Theme.of(context).primaryIconTheme.size,
                                color: Theme.of(context).primaryIconTheme.color
                            ),
                            backgroundColor: new Color(0xFF55CCFF).withOpacity(0.0),
                            elevation: 0.0,
                        ),
                    ),
                ],
            ),
        );
    }
}