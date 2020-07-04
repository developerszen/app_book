import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
    const BookWidget({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 175,
            margin: EdgeInsets.all(10),
            child: Row(
                children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/book1.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Text(
                                'The Heart of Hell',
                                style: TextStyle(
                                    fontFamily: "SF Rounded",
                                    fontSize: 20,
                                    color: Color(0xff242126)
                                ),
                            ),
                            SizedBox(height: 5),
                            Text(
                                'Mitch Weiss',
                                style: TextStyle(
                                    fontFamily: "SF Rounded",
                                    fontSize: 12,
                                    color: Color(0xff242126).withOpacity(0.7)
                                ),
                            ),
                            SizedBox(height: 15),
                            Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 15,
                            ),
                            SizedBox(height: 10),
                            Container(
                                width: 200,
                                child: Text(
                                    "The untold story of courage and sacrifice in the shadow of Iwo Jima.",
                                    style: TextStyle(
                                        fontFamily: "SF Rounded",
                                        fontSize: 10,
                                        color: Color(0xff242126).withOpacity(0.25)
                                    ),
                                ),
                            ),
                            SizedBox(height: 8),
                            Row(
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(5),
                                        width: 100,
                                        child: MaterialButton(
                                            textColor: Colors.white,
                                            color: Color(0xff29b6f6),
                                            child: Text(
                                                'Añadir Carro',
                                                style: TextStyle(
                                                    fontSize: 11
                                                ),
                                            ),
                                            onPressed: (){}
                                        ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(5),
                                        width: 100,
                                        child: MaterialButton(
                                            textColor: Colors.black,
                                            color: Colors.white,
                                            child: Text(
                                                'Favoritos',
                                                style: TextStyle(
                                                    fontSize: 11
                                                ),
                                            ),
                                            onPressed: (){}
                                        ),
                                    )
                                ],
                            )
                        ],
                    )
                ],
            ),
        );
    }
}