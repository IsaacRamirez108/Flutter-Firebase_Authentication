
class Customer {

  // Customer Information
  String _firstName;
  String _lastName;
  String _DOB;
  String _startLeaseDate;
  String _endLeaseDate;
  String _estimatedRent;
  //Flex _leaseCopy;
  String _portalURL;
  String _portalUserName;
  String _portalPassword;

  // This is our getter
  Customer(this._firstName, this._lastName, this._DOB, this._startLeaseDate,
      this._endLeaseDate, this._estimatedRent, this._portalURL,
      this._portalUserName, this._portalPassword);

  // This is our setters
  String get firstName => _firstName;

  String get lastName => _lastName;

  String get DOB => _DOB;

  String get startLeaseDate => _startLeaseDate;

  String get endLeaseDate => _endLeaseDate;

  String get estimatedRent => _estimatedRent;

  String get portalURL => _portalURL;

  String get portalUserName => _portalUserName;

  String get portalPassword => _portalPassword;
}
