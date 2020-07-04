import 'package:book_applic/libro/screens/list_screen.dart';
import 'package:flutter/material.dart';

class CategoryAvatarWidget extends StatelessWidget {
    const CategoryAvatarWidget({
        @required this.imagen,
        @required this.texto,
        Key key
    }) : super(key: key);

    final ImageProvider imagen;
    final String texto;

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Column(
                children: <Widget>[
                    GestureDetector(
                        child: CircleAvatar(
                            radius: 45,
                            backgroundImage: imagen,
                        ),
                        onTap: (){
                            Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => BookListScreen())
                            );
                        },
                    ),
                    SizedBox(height: 5),
                    Text(texto)
                ],
            ),
        );
    }
}