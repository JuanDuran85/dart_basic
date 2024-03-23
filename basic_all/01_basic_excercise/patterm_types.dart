void main(List<String> args) {
  
  /* 
      !Null-check
      subpattern?

    Null-check patterns match first if the value is not null, and then match the inner pattern against that same value. They let you bind a variable whose type is the non-nullable base type of the nullable value being matched.

    To treat null values as match failures without throwing, use the null-check pattern.
  

      !Null-assert
      subpattern!

    Null-assert patterns match first if the object is not null, then on the value. They permit non-null values to flow through, but throw if the matched value is null.

    To ensure null values are not silently treated as match failures, use a null-assert pattern while matching

       !if-null	??

    AVOID using null as an operand in if null operators.

    Using null in an if null operator is redundant, regardless of which side null is used on.

  */


}