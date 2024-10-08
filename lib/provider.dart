import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>(
      (ref) {
    return "Riverpod State";
  },
);


final countProvider = StateProvider<int>((ref) => 0);




/*

@riverpod
List count(CountRef ref) {
  ref.keepAlive();
  return [];
}

@riverpod
class countClass extends _$countClass {
  @override
  int build(String id) {

    final c  = ref.watch(countProvider.select((value) => value.length,));

    return 0;
  }

  update(newvalue){
    state = newvalue;
  }
}
 */


