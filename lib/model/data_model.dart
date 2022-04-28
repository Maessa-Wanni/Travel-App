class DataModel {
  int id;
  String name;
  String description;
  int price;
  int stars;
  int people;
  int? selectedPeople;
  String img;
  String location;
  String? createdAt;
  String? updatedAt;

  DataModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.stars,
      required this.people,
      this.selectedPeople,
      required this.img,
      required this.location,
      this.createdAt,
      this.updatedAt});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      stars: json['stars'],
      people: json['people'],
      selectedPeople: json['selected_people'],
      img: json['img'],
      location: json['location'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['stars'] = this.stars;
    data['people'] = this.people;
    data['selected_people'] = this.selectedPeople;
    data['img'] = this.img;
    data['location'] = this.location;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
