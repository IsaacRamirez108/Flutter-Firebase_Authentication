class Customer {
  
  // Customer Information
  String FirstName;
  String LastName;
  String DOB;
  String StartLeaseDate;
  String EndLeaseDate;
  String EstimatedRent;
  File LeaseCopy;
  String PortalURL;
  String Username;
  String Password;
  
  
  void Customer(String FirstName, String LastName, String DOB)
  {
    this.FirstName = FirstName;
    this.LastName = LastName;
    this.DOB = DOB;
  }
  
  String Get_FirstName()
  {
    Return FirstName;
  }
  
  void Set_FirstName(String FirstName)
  {
    this.FirstName = FirstName;
  }
}
