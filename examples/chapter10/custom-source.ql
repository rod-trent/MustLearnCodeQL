/**
 * @name Custom source example
 * @description Treats the return value of getUserInput as a source.
 * @kind problem
 * @id mustlearn/js-custom-source
 * @tags security
 * @problem.severity recommendation
 * @precision high
 */
import javascript

class CustomSource extends DataFlow::Node {
  CustomSource() {
    this = any(CallExpr c | c.getCalleeName() = "getUserInput").flow()
  }
}

from CustomSource src
select src, "Custom source: getUserInput."
