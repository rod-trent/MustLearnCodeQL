# Name Resolution

The QL compiler resolves names to program elements.

## Resolution order

1. Local variables and parameters
2. Members of the current module
3. Imported modules
4. Built-in entities

## Qualified names

```ql
DataFlow::Node
TaintTracking::localTaint
```

## Notes

- Ambiguous names produce compile errors.
- Use qualified names to disambiguate.
- See also `modules-overview.md`.
