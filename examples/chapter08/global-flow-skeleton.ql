/**
 * Minimal global data-flow configuration skeleton.
 * Replace the source and sink predicates with real ones.
 */

import javascript

module MyConfig implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) {
    source = any(RemoteFlowSource rfs)
  }

  predicate isSink(DataFlow::Node sink) {
    // placeholder – replace with a real sink
    any()
  }
}

module MyFlow = DataFlow::Global<MyConfig>;

from MyFlow::PathNode source, MyFlow::PathNode sink
where MyFlow::flowPath(source, sink)
select sink.getNode(), source, sink, "Data flow from source to sink."
