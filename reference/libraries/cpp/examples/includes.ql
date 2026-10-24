/**
 * @name Include directives
 * @description Lists include directives.
 * @kind problem
 * @id mustlearn/cpp-includes
 */
import cpp

from Include i
select i, "Include: " + i.getIncludedFile().getBaseName()
