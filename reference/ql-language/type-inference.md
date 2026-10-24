# CodeQL Type Inference and Typing Rules

QL is statically typed. Variables must be declared with a type, and the compiler checks compatibility. Typing is *prescriptive*: a declared type acts as a runtime containment check, not merely a compile-time annotation.

## Subtyping

Type A is a subtype of type B if any of the following hold:

- A and B are the same type
- A is a subtype of some C that is a subtype of B
- A and B are database types and B is a base type of A
- A is a class type and B is the character type of A
- A is a class domain type and B is a base type of the associated class
- A is `int` and B is `float`

Supertypes are the converse relation.

## Type compatibility

Two types are compatible if they share a common supertype, or if each has some supertype that is a database type. Compatible types may appear together in equality tests, order comparisons (when orderable), and set literals.

## Typing environments

A typing environment maps variables to types. Special symbols `this` and `result` are also mapped:

- In a member predicate, `this` has the class type
- In a characteristic predicate, `this` has the class domain type
- In a predicate with a result type, `result` has that result type

## Inference highlights

| Construct | Type rule |
|-----------|-----------|
| Variable reference | Same type as the declared variable |
| Literal | Type of the literal (`1` is `int`, `"hi"` is `string`) |
| Cast `x.(T)` or `(T)x` | Constrains the type of the expression to `T` |
| `instanceof` | The expression’s type must be compatible with the checked type |
| Set literal | Element types must be consistent (one element type is a supertype of the others) |
| Arithmetic / concatenation | Determined by the operator and operand types |

## Practical consequences

- Declaring a variable as a class type is equivalent to adding an implicit `instanceof` check.
- A formula that can never hold (empty type) is often reported by the compiler as a likely mistake.
- Prefer postfix casts (`x.(Expr)`) for readability.
- Order comparisons and equality require compatible types.

## Notes

- Full formal rules appear in the QL language specification.
- See also `type-system.md` in this directory.
