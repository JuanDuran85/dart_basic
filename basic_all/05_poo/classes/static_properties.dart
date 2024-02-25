class Tools {
  // static properties can be accessed and modified without creating an instance of the class
  static List<String> toolsList= ['hammer', 'screwdriver', 'wrench'];

  // static property can be accessed without creating an instance of the class but can't be modified
  static const int toolsCount = 3;

  static void getTools() => toolsList.forEach(print);

}