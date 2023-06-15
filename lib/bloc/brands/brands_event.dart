part of 'brands_bloc.dart';

@immutable
abstract class BrandsEvent {}

class GetBrands extends BrandsEvent {
  final List<BrandModel> brands;

  GetBrands({required this.brands});
}
