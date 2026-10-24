/**
 * @name Parameters
 * @description Lists method parameters.
 * @kind problem
 * @id mustlearn/cs-parameters
 */
import csharp

from Method m, Parameter p
where p = m.getParameter(_)
select p, "Parameter of " + m.getName()
