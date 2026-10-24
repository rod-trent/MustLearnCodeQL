# Aliases

An alias is an alternative name for an existing QL entity.

## Example

```ql
predicate isEmptyFunction = empty/1;

class EmptyFunction = Function;
```

## Notes

- Aliases help with readability and refactoring.
- Predicate aliases use the `/arity` form.
- Class aliases create a new name for an existing type.
