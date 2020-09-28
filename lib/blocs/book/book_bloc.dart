import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:skroll/blocs/book/book_event.dart';

import 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState>{
  BookBloc(BookState initialState) : super(initialState);

  @override
  Stream<BookState> mapEventToState(BookEvent event) async* {
    if(event is LoadBook){
      yield BookLoading();

      String textContent = await rootBundle.loadString('assets/read.txt');

      String fileName = 'sampleshort.epub';
      // String fullPath =

      yield BookLoaded(textContent);
    }
  }

}