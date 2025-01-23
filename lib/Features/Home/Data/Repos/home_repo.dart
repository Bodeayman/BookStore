import 'package:dartz/dartz.dart';
import 'package:mvvm_practise/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:mvvm_practise/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

  // Remember that abstract class , is a class that needs to be redifeined and
  // don't have any Implemneation


  // This is called repositoriy pattern