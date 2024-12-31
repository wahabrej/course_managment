class CoachModelClass {
  String name;
  String expertise;
  String email;
  String level;
  double rating;
  String image;

  CoachModelClass({
    required this.name,
    required this.email,
    required this.level,
    required this.expertise,
    required this.image,
    required this.rating,
  });


  factory CoachModelClass.fromMap(Map<String, dynamic> map) {
    return CoachModelClass(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      image: map['image'] ?? '',
      level: map['level'] ?? '',
      expertise: map['designation'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
    );
  }

  
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'level': level,
      'image': image,
      'designation': expertise,
      'rating': rating,
    };
  }
}
