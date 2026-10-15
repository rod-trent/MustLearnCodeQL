/**
 * @kind problem
 * @id mustlearn/exercise-custom-sink
 * @name Exercise: custom sink
 * @description Practice adding a custom sink.
 */

import javascript

// TODO: create a class that extends a sink type (or simply
// identifies calls to "dangerousExecute") and use it below.

from CallExpr c
where c.getCalleeName() = "dangerousExecute"
select c, "Custom sink candidate – model this properly for taint tracking"
