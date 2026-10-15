# Chapter 3 – Database Creation Examples

```bash
# JavaScript
codeql database create js-db --language=javascript --source-root=./sample-js

# Python
codeql database create py-db --language=python --source-root=.

# Java (Maven)
codeql database create java-db --language=java --source-root=. --command="mvn clean compile -DskipTests"
```

See the book for full explanations.
