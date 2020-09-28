
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skroll/blocs/book/book.dart';

class   PageScreen extends StatefulWidget {
  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<BookBloc, BookState>(
        builder: (BuildContext context, BookState state) {

          if(state is BookLoaded){
            return Container(
              child: Text('---${state.content}'),
            );
          }

          return Container();
        },
      ),
    );
  }
}
