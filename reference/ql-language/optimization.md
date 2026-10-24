# CodeQL Query Optimization

QL is evaluated relationally. Most performance issues come from computing too many intermediate tuples. The optimizer is powerful, but good structure helps it.

## Core principles

1. **Use the most specific types possible**  
   Types give the optimizer an upper bound. Prefer `MethodAccess` over `Expr`, `LoggingCall` over `Call`, etc.

2. **Avoid Cartesian products**  
   Never leave variables unrelated (or related only by negation). Join on as many variables as possible.

3. **Keep recursion simple**  
   Prefer a clear base case plus a single recursive call. Transitive closure (`+` / `*`) over a simple predicate is usually faster than complex mutual recursion.

4. **Fold large predicates**  
   Extract tightly-bound, linear chunks into smaller helper predicates so the optimizer can join them efficiently.

5. **Cache sparingly**  
   The `cached` annotation stores a relation for reuse across queries. Useful for expensive shared logic, but it increases memory and can prevent contextual specialization.

6. **Use inlining pragmas when needed**  
   - `pragma[inline]` — force inlining so the predicate benefits from call-site context  
   - `pragma[noinline]` — prevent the optimizer from undoing a carefully written helper

## Practical tips

| Tip | Why it helps |
|-----|--------------|
| Bind variables early | Reduces intermediate tuple counts |
| Prefer transitive closure | Special optimized data structures |
| Avoid expensive operations inside recursion | String comparisons, etc. can explode |
| Use `exists` to limit scope | Prevents accidental cross-products |
| Check evaluator logs | Identifies the actual bottlenecks |

## Diagnostics

```bash
# Detailed evaluator log during analysis
codeql database analyze my-db ./my-queries \
  --evaluator-log=eval.log \
  --format=sarif-latest --output=results.sarif

# Summarize the log
codeql generate log-summary eval.log --format=text
```

Look for predicates that produce millions of tuples.

## Resource controls

```bash
codeql database analyze my-db codeql/javascript-queries \
  --threads=0 \
  --ram=8192 \
  --timeout=600000
```

- `--threads=0` uses all cores
- `--ram` is in MB
- `--timeout` is in milliseconds per query

## Caching behavior

- Results are cached inside the database directory.
- Re-running the same queries is fast.
- `codeql database cleanup` clears the cache.
- `--rerun` ignores the cache for one run.

## Notes

- The official troubleshooting guide is the authoritative source for deeper optimizer internals.
- Most custom queries do not need `cached` or pragmas; start with specific types and tight joins.
- See also `recursion.md` and `type-system.md` in this directory.
