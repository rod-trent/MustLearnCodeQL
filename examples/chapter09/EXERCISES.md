# Chapter 9 Exercises

1. Modify `remote-to-eval.ql` so that it also treats calls to `Function` (the constructor) as sinks.
2. Add a barrier that stops taint through calls to a function named `escapeHtml`.
3. Write a path query that tracks taint from a function parameter named `input` to a call to `document.write`.
4. (Optional) Experiment with a simple flow state that tracks whether a value has been sanitized, and only report unsanitized paths.
