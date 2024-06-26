

abstract class ModelBindings<T>
{
  const ModelBindings();
  int? getId(T obj);
  Map<String, Object?> toJson(T obj);

  T fromJson(Map<String, Object?> json);

  int sortDesc(T a, T b);
}


abstract class Repository <T>
{
  Repository({required this.bindings});

  final ModelBindings<T> bindings;
  
  final _localCache = <int, T>{};
  
  Future<T> save(T item) async{
    final savedItem = await persist(item);
    _localCache[bindings.getId(savedItem)!] = savedItem;

    return savedItem;
  }

  Future<List<T>> list() async
  {
    final items = await load();
    for(final item in items)
    {
      _localCache[bindings.getId(item)!] = item;
    }

    // TODO(Teren91): Sort these when we cache and not every read
    return _localCache.values.toList()..sort(bindings.sortDesc);
  }
  
  Future<T> persist(T item);
  Future<List<T>> load();
}
