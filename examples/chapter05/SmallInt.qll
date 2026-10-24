class SmallInt extends int {
  SmallInt() { this in [1..20] }

  int square() { result = this * this }

  predicate isEven() { this % 2 = 0 }
}
