class Endpoint{
  const Endpoint._();

  static productUrl({int limit = 10 ,required  int skip}) => "https://dummyjson.com/products?limit=$limit&skip=$skip";
}