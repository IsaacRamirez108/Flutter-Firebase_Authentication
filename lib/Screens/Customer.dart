
class Customer {

  // Customer Information
  final String _firstName;
  final String _lastName;
  final String _DOB;
  final String _SSN;
  final String _startLeaseDate;
  final String _endLeaseDate;
  final String _estimatedRent;
  //Flex _leaseCopy;
  final String _portalURL;
  final String _portalUserName;
  final String _portalPassword;

  // This is our getter
  Customer(this._firstName, this._lastName, this._DOB, this._SSN, this._startLeaseDate,
      this._endLeaseDate, this._estimatedRent, this._portalURL,
      this._portalUserName, this._portalPassword);

  // This is our setters
  String get firstName => _firstName;

  String get lastName => _lastName;

  String get DOB => _DOB;

  String get SSN => _SSN;

  String get startLeaseDate => _startLeaseDate;

  String get endLeaseDate => _endLeaseDate;

  String get estimatedRent => _estimatedRent;

  String get portalURL => _portalURL;

  String get portalUserName => _portalUserName;

  String get portalPassword => _portalPassword;
}
