import 'package:flaxtter_shared/src/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

enum BooleanLogic {and, or}

abstract class Filter<T> {
  const Filter();
  bool apply(T obj);
}

@Freezed()
abstract class ComboFilter<T> extends Filter<T> with _$ComboFilter<T>
{
  const factory ComboFilter.and(List<Filter<T>> filters) = AndFilter;
  const factory ComboFilter.or(List<Filter<T>> filters) = OrFilter;

  factory ComboFilter.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
        _$ApiResponseFromJson(json, fromJsonT);
  

  // ComboFilter({required this.children, required this.operator});

  // final List<Filter<T>> children;
  // final BooleanLogic operator;

  // @override
  // bool apply(T obj); => 
  //   switch(operator){
  //     BooleanLogic.and => children.every((child) => child.apply(obj)),
  //     BooleanLogic.or => children.any((child) => child.apply(obj)),
  //   };
}

// class AndFilter<T> extends ComboFilter<T>{
//   AndFilter({required super.children}) : super(operator: BooleanLogic.and)
// }

// class OrFilter<T> extends ComboFilter<T>{
//   OrFilter({required super.children}) : super(operator: BooleanLogic.or)
// }