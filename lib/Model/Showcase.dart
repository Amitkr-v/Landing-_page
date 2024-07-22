class ShowcaseModel {
  String _id;
  String _name;
  String _description;
  String _profileImage;
  List<String> _images;

  ShowcaseModel({
    required String id,
    required String name,
    required String description,
    required String profileImage,
    required List<String> images,
  })  : _id = id,
        _name = name,
        _description = description,
        _profileImage = profileImage,
        _images = images;

  // Getters
  String get id => _id;
  String get name => _name;
  String get description => _description;
  String get profileImage => _profileImage;
  List<String> get images => _images;

  // Setters
  set id(String value) {
    _id = value;
  }

  set name(String value) {
    _name = value;
  }

  set description(String value) {
    _description = value;
  }

  set profileImage(String value) {
    _profileImage = value;
  }

  set images(List<String> value) {
    _images = value;
  }
}
