import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mvvm_practise/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:mvvm_practise/Features/Home/Data/Repos/home_repo.dart';

part 'used_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => {
        emit(
          NewestBooksFailure(
            failure.errorMessage,
          ),
        ),
      },
      (books) => {
        emit(
          NewestBooksSuccess(
            books,
          ),
        ),
      },
    );
  }
}
