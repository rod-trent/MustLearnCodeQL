# Chapter 14 Exercises

1. Take the SQL injection seed and add a barrier for a function named `escapeSql`.
2. Generalize the XSS seed so it also treats assignments to `innerHTML` as sinks.
3. Run one of the seeds with MRVA (or against several local databases) and note which results look like true positives.
4. (Optional) Turn one true-positive path into a more precise query by tightening the source or adding a missing model.
