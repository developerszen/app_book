import 'package:book_applic/libro/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class BookListScreen extends StatefulWidget {
    BookListScreen({Key key}) : super(key: key);

    @override
    _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Libros'),
            ),
            body: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index){
                    return BookWidget();
                }
            ),
        );
    }
}