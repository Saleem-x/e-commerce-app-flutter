import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/api/functions/getbrands.dart';
import 'package:ecommerce_app/models/braands/brand_model/brand_model.dart';
import 'package:meta/meta.dart';

part 'brands_event.dart';
part 'brands_state.dart';

class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {
  BrandsBloc() : super(BrandsInitial(brands)) {
    on<GetBrands>((event, emit) {
      emit(BrandsState(event.brands));
    });
  }
}
