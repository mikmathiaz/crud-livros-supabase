class Item {
  final int? id;
  final String titulo;
  final String anoLanca;
  final int? paginas;

  Item({this.id, required this.titulo, required this.anoLanca, this.paginas});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      titulo: json['titulo'],
      anoLanca: json['ano_lanca'],
      paginas: json['paginas'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'titulo': titulo, 'ano_lanca': anoLanca, 'paginas': paginas};
  }
}
