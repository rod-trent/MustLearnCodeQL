# Types

QL is statically typed. Every variable has a declared type, and a type is a set of values.

## Built-in types

| Type | Description |
|------|-------------|
| `boolean` | `true` or `false` |
| `int` | Integers |
| `float` | Floating-point numbers |
| `string` | Unicode strings |
| `date` | Dates |
| `QlBuiltins::BigInt` | Arbitrary-precision integers |

## User-defined types (classes)

A class represents a set of values that satisfy a logical property:

```ql
class SmallInt extends int {
  SmallInt() { this in [1..10] }
}
```

A value may belong to more than one class.

## Type compatibility

- A class is a subtype of the types it extends.
- Member predicates are only available on values known to be in the class.
- The compiler rejects type errors at compile time.

## Notes

- Prefer the most specific type that still expresses your intent.
- Use classes to group related values and attach member predicates.
- See the official QL language reference on types for the full type system rules.
