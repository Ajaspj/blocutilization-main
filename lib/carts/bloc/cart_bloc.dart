import 'package:bloc/bloc.dart';
import 'package:cartapp/models/Carts.dart';
import 'package:cartapp/web/apiservice.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial(clist: [])) {
    on<Fetch>((event, emit) async {
      Apiservice apiService = Apiservice();
      var list = await apiService.fetchData();
      emit(CartState(clist: list));
    });
  }
}
