# CodeQL Type System

QL is statically typed. Every expression and variable has a type, and the compiler checks type compatibility at compile time.

## Primitive types

These are always available, independent of the database:

| Type | Description |
|------|-------------|
| `boolean` | `true` or `false` |
| `int` | 32-bit integers |
| `float` | 64-bit floating-point numbers |
| `string` | Unicode strings |
| `date` | Dates (optionally with times) |
| `QlBuiltins::BigInt` | Arbitrary-precision integers |

Built-in operations are available via dispatch (e.g. `1.toString()`).

## Classes

A class is a user-defined type that represents a logical property. A value belongs to the class if it satisfies the characteristic predicate.

```ql
class SmallInt extends int {
  SmallInt() { this in [1..10] }          // characteristic predicate

  predicate isEven() { this % 2 = 0 }     // member predicate
}
```

Key rules:
- A class must extend at least one type (its base types).
- The values of a concrete class are the intersection of its base types that also satisfy the characteristic predicate.
- A value may belong to multiple classes at the same time.
- Classes support multiple inheritance.

## Abstract classes

An abstract class represents the union of its subclasses (subject to its characteristic predicate). Use `abstract` when you want a common interface that is only populated by concrete subclasses.

## instanceof

You can declare a class as a non-extending subtype with `instanceof`:

```ql
class EvenInt instanceof int {
  EvenInt() { this % 2 = 0 }
}
```

This creates a subtype without inheriting the full interface of the base type.

## Type compatibility

- A class is a subtype of the types it extends.
- Member predicates are only available on values known to be in the class.
- The compiler rejects uses that violate the type hierarchy.

## Database types

The database schema defines additional types (prefixed with `@` in the specification). These are the raw entities extracted from source code. Most query authors interact with them through the standard library classes rather than directly.

## Algebraic data types and unions

QL also supports algebraic data types and type unions for more advanced modeling. These are less commonly needed for typical security queries.

## Notes

- Prefer the most specific type that still expresses your intent.
- Use classes to group related values and attach member predicates.
- See also `types.md` in this directory for a shorter overview.
