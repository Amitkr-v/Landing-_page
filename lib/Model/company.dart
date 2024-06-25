class CompanyModel {
  String _id;
  String _profile;
  String _name;
  String _address;
  Uri _facebook;
  Uri _instagram;
  Uri _linkedin;
  Uri _map;
  String _website;
  String _email;
  String _phone;
  String _joined;
  String _totalmem;
  String _status;
  String _about;

  CompanyModel({
    required String id,
    required String profile,
    required String name,
    required String address,
    required String facebook,
    required String instagram,
    required String linkedin,
    required String map,
    required String website,
    required String email,
    required String phone,
    required String joined,
    required String totalmem,
    required String status,
    required String about,
  })  : _id = id,
        _profile = profile,
        _name = name,
        _address = address,
        _facebook = Uri.parse(facebook),
        _instagram = Uri.parse(instagram),
        _linkedin = Uri.parse(linkedin),
        _map = Uri.parse(map),
        _website = website,
        _email = email,
        _phone = phone,
        _joined = joined,
        _totalmem = totalmem,
        _status = status,
        _about = about;

  // Getters
  String get profile => _profile;
  String get name => _name;
  String get address => _address;
  Uri get facebook => _facebook;
  Uri get instagram => _instagram;
  Uri get linkedin => _linkedin;
  Uri get map => _map;
  String get website => _website;
  String get email => _email;
  String get phone => _phone;
  String get joined => _joined;
  String get totalmem => _totalmem;
  String get status => _status;
  String get about => _about;
  String get id => _id;

  // Setters
  set profile(String value) {
    _profile = value;
  }

  set name(String value) {
    _name = value;
  }

  set address(String value) {
    _address = value;
  }

  set facebook(Uri value) {
    _facebook = value;
  }

  set instagram(Uri value) {
    _instagram = value;
  }

  set linkedin(Uri value) {
    _linkedin = value;
  }

  set map(Uri value) {
    _map = value;
  }

  set website(String value) {
    _website = value;
  }

  set email(String value) {
    _email = value;
  }

  set phone(String value) {
    _phone = value;
  }

  set joined(String value) {
    _joined = value;
  }

  set totalmem(String value) {
    _totalmem = value;
  }

  set status(String value) {
    _status = value;
  }

  set about(String value) {
    _about = value;
  }
}
