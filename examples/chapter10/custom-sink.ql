/**
 * @name Custom sink example
 * @description Treats the argument of a function named logSensitive as a sink.
 * @kind problem
 * @id mustlearn/js-custom-sink
 * @tags security
 * @problem.severity recommendation
 * @precision high
 */
import javascript

class CustomSink extends DataFlow::Node {
  CustomSink() {
    this = any(CallExpr c | c.getCalleeName() = "logSensitive").getArgument(0).flow()
  }
}

from CustomSink sink
select sink, "Custom sink: logSensitive."
