class ServiceModel {
  String _id;
  String _image;
  String _title;
  String _titleDesc;

  ServiceModel({
    required String id,
    required String image,
    required String title,
    required String titleDesc,
  })  : _id = id,
        _image = image,
        _title = title,
        _titleDesc = titleDesc;

  // Getters
  String get id => _id;
  String get image => _image;
  String get title => _title;
  String get titleDesc => _titleDesc;

  // Setters
  set id(String value) {
    _id = value;
  }

  set image(String value) {
    _image = value;
  }

  set title(String value) {
    _title = value;
  }

  set titleDesc(String value) {
    _titleDesc = value;
  }
}
