# Modules

Modules organize QL code by grouping related types, predicates, and other modules.

## Defining a module

```ql
module Example {
  class OneTwoThree extends int {
    OneTwoThree() { this in [1..3] }
  }
}
```

## Importing

```ql
import Example
```

## Parameterized modules

```ql
module Pair<T, U> {
  class Value extends T { ... }
}
```

## Notes

- Modules can contain imports, predicates, classes, aliases, and nested modules.
- Parameterized modules are instantiated by supplying type or module arguments.
- See also the existing `modules.md` page.
