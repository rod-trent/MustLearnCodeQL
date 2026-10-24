# Modules

Modules group related predicates, classes, and other modules. They support reuse and avoid name clashes.

## Defining a module

```ql
module Example {
  class OneTwoThree extends int {
    OneTwoThree() {
      this = 1 or this = 2 or this = 3
    }
  }
}
```

## Importing

```ql
import javascript
import Example
```

A `.qll` file is itself a module whose name matches the file name.

## Parameterized modules

QL supports parameterized modules for generic programming:

```ql
module Pair<T> {
  class Pair extends T {
    // ...
  }
}
```

## Module bodies

A module body may contain:

- Import statements
- Predicates
- Classes
- Nested modules
- Aliases
- Select clauses (only in a query module)

## Notes

- Prefer modules over a flat collection of predicates for larger libraries.
- Import paths are resolved relative to the pack root (`qlpack.yml`).
- See the official QL language reference on modules for the full rules.
