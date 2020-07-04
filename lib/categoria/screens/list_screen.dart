import 'package:book_applic/categoria/widgets/category_avatar_widget.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatefulWidget {
    CategoryListScreen({Key key}) : super(key: key);

    @override
    _CategoryListScreenState createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.fill
                )
            ),
            alignment: Alignment.center,
            child: Column(
                children: <Widget>[
                    SizedBox(height: 70),
                    Expanded(
                        child: GridView.count(
                            crossAxisCount: 3,
                            children: <Widget>[
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat1.png'),
                                    texto: 'Política',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat2.png'),
                                    texto: 'Historia',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat3.png'),
                                    texto: 'Ciencia',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat4.png'),
                                    texto: 'Derecho',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat5.png'),
                                    texto: 'Comida',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat6.png'),
                                    texto: 'Medicina',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat7.png'),
                                    texto: 'Diseño',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat8.png'),
                                    texto: 'Cultura',
                                ),
                                CategoryAvatarWidget(
                                    imagen: AssetImage('assets/images/cat9.png'),
                                    texto: 'Deportes',
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }
}