# QL Language Core

Key constructs of the QL language used by CodeQL.

## Query structure

```ql
from /* typed variable declarations */
where /* logical formula */
select /* expressions to return */
```

## Predicates

- Non-member: free-standing relations
- Member: belong to a class, can use `this`
- Characteristic: restrict membership of a class

```ql
predicate isSmall(int i) { i in [1..10] }

class SmallInt extends int {
  SmallInt() { this in [1..10] }          // characteristic
  int square() { result = this * this }   // member
}
```

## Classes

Represent a set of values that satisfy a logical property. Use `extends` for inheritance.

## Modules

Group related predicates and classes. Import with `import`.

```ql
import javascript
```

## Recursion

Evaluated to the least fixed point. Transitive closure shorthand: `predicate+`.

## Aggregates

`count`, `sum`, `min`, `max`, `avg`, etc.

```ql
count(Function f | f.getName() = "main")
```

## Built-in types

`boolean`, `int`, `float`, `string`, `date`, `QlBuiltins::BigInt`

See the individual topic files for more detail.
