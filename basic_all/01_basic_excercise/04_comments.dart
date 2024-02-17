void main(List<String> args) {
  // Dart supports single-line comments, multi-line comments, and documentation comments.
  
  // - A single-line comment begins with //. Everything between // and the end of line is ignored by the Dart compiler.

  // !refactor this line
  print("Comments in Dart - Single-line comments");


  /* Multi-line comments #

  A multi-line comment begins with /* and ends with */. Everything between /* and */ is ignored by the Dart compiler (unless the comment is a documentation comment; see the next section). Multi-line comments can nest. */

  /**
   * ?Multi-Line comment
   */
    print('Comments in Dart - Multi-Line comment');



  /**
   * *Documentation comment - are multi-line or single-line comments that begin with /// or /**. Using /// on consecutive lines has the same effect as a multi-line doc comment*/
  */
  
  print('Comments in Dart - Documentation comment');

  /// Checks if the provided boolean value is active.
  ///
  /// Takes a boolean parameter [inVar] and returns `true` if [inVar] is `true`,
  /// otherwise it returns `false`.
  ///
  /// The [inVar] parameter represents the state to be checked.

  bool isActive(bool inVar) {
    if(inVar) {
      return true;
    } else {
      return false;
    }
  };

  //In this docstring, the function's purpose, its parameter, and the return value are all explained. The [inVar] syntax creates a link to the inVar parameter in the generated documentation.
  
  print(isActive(true));

}