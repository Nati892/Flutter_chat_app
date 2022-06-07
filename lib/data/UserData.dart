enum UserType { talent, seeker, academy }

enum GenderType { male, female, undef, secret }

class UserData {
  static int topId = 0;

  int _id = 0;
  String _first_name = "";
  String _last_name = "";
  String _phoneNumber = "";
  String _email = "";
  UserType _userType = UserType.talent;
  GenderType _genderType = GenderType.undef;



  UserData(String first_name, String last_name, String phone_num, String email,
      UserType userType, GenderType genderType) {
    advanceId();
    this._first_name = first_name;
    this._last_name = last_name;

    if (phone_num.length > 10) {
      this._phoneNumber = phone_num.substring(0, 10);
    } else {
      this._phoneNumber = phone_num;
    }
    if (phone_num.length < 10)
      for (int i = 0; i < (10 - phone_num.length); i++)
        this._phoneNumber += "0";

    this._email = email;
    this._genderType = genderType;
    this._userType = userType;
  }


  void advanceId() {
    this._id = _id;
    topId++;
  }


//getters
  int getId() {
    return this._id;
  }

  String getFirstName() {
    return this._first_name;
  }

  String getLastName() {
    return this._last_name;
  }

  String getEmail() {
    return this._email;
  }

  UserType getUserType() {
    return this._userType;
  }

  GenderType getGenderType() {
    return this._genderType;
  }
}
