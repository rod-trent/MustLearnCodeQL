/**
 * @name Small integer Pythagorean triples
 * @description Finds Pythagorean triples using small integers.
 * @kind problem
 * @id mustlearn/small-int-triples
 */
class SmallInt extends int {
  SmallInt() { this in [1..20] }

  int square() { result = this * this }
}

from SmallInt x, SmallInt y, SmallInt z
where x.square() + y.square() = z.square() and x <= y
select x, y, z, "Triple: " + x + ", " + y + ", " + z
