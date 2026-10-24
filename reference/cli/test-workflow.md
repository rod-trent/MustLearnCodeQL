# Test Workflow

Run and accept CodeQL test cases.

## 1. Create a test

Place a `.ql` file and a `.qlref` or expected `.expected` file under a test directory.

## 2. Run tests

```bash
codeql test run tests/
```

## 3. Accept new results

```bash
codeql test accept tests/
```

## Notes

- Tests compare query output against `.expected` files.
- Related commands: `test run`, `test accept`, `test extract`.
