# Query Metadata

Every `.ql` query should start with a QLDoc comment containing metadata.

## Required properties

| Property | Description |
|----------|-------------|
| `@name` | Short human-readable name |
| `@description` | Longer description of what the query finds |
| `@kind` | `problem`, `path-problem`, `diagnostic`, or `metric` |
| `@id` | Unique identifier (`scope/name`) |

## Optional properties

| Property | Description |
|----------|-------------|
| `@tags` | Space-separated tags (e.g. `security`, `maintainability`) |
| `@problem.severity` | `error`, `warning`, or `recommendation` |
| `@precision` | `very-high`, `high`, `medium`, or `low` |
| `@security-severity` | Numeric score (0.0–10.0) for security queries |

## Example

```ql
/**
 * @name Empty functions
 * @description Finds functions with no statements.
 * @kind problem
 * @id mustlearn/js-empty-functions
 * @tags maintainability
 * @problem.severity recommendation
 */
```

## Notes

- Path-problem queries require a path graph import and a four-column select.
- Metadata is consumed by `database analyze` when producing SARIF.
- See the official query metadata documentation for the full set of properties.
