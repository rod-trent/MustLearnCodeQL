/**
 * @kind problem
 * @id mustlearn/custom-source-example
 * @name Custom source modeling example
 * @description Illustrates adding a custom source model.
 */

import javascript

/** Example of modeling a custom library function as a remote flow source. */
class CustomRemoteSource extends RemoteFlowSource {
  CustomRemoteSource() {
    this = any(CallExpr c | c.getCalleeName() = "getUserInput").flow()
  }
}

from CustomRemoteSource src
select src, "Custom remote source identified."
