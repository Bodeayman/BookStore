import 'package:dartz/dartz.dart';
import 'package:mvvm_practise/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:mvvm_practise/Features/Home/Data/Repos/home_repo.dart';
import 'package:mvvm_practise/core/errors/failure.dart';
import 'package:mvvm_practise/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
