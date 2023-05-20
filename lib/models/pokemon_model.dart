class Pokemon {
  int id;
  String name;
  String img;

  Pokemon.fromJson(Map<String, dynamic> data)
      : id = data['id'] ?? 1,
        name = data['name'] ?? 'não veio',
        img = data['img'] ?? 'não veio';

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}
