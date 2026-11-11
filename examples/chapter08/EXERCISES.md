# Chapter 8 Exercises

1. Write a local data-flow query that finds string literals that flow into a call to `console.log` within the same function.
2. Extend the global-flow skeleton so that it only reports flows that pass through a function parameter.
3. Add an `isBarrier` predicate that blocks flow through calls to a sanitizer function named `sanitize`.
4. (Optional) Add an `isAdditionalFlowStep` that models flow from the return value of a function named `getUserInput` into its callers.
