class CategoryModel {
  final int id;
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });

  static CategoryModel one() {
    return CategoryModel(id: 1, name: 'Jalan');
  }

  static CategoryModel two() {
    return CategoryModel(id: 2, name: 'Ketertiban');
  }

  static List<CategoryModel> all() {
    return [
      CategoryModel(id: 1, name: 'Pohon'),
      CategoryModel(id: 2, name: 'Lampu Penerangan Jalan')
    ];
  }
}
