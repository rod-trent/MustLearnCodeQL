# C/C++ — Data Flow

## Key imports

```ql
import cpp
import semmle.code.cpp.dataflow.DataFlow
```

## Local flow

```ql
DataFlow::localFlow(source, sink)
```

## Notes

- C/C++ data flow is sensitive to extraction quality; a successful build produces the best results.
- Global analysis uses configuration classes similar to other languages.
- Common sinks include calls to dangerous functions (`system`, `strcpy`, format functions, etc.).

See the official C/C++ library documentation for modeled APIs and the full data-flow API.
