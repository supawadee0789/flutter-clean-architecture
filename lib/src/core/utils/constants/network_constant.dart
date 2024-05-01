class AppApi {
  static const String productApiUrl = 'https://fakestoreapi.com';

  static String getProductPath() {
    return '/products';
  }

  static String getCategoriesPath() {
    return '/products/categories';
  }

  static String filterByCategory(String category) {
    return '/products/category/$category';
  }
}
