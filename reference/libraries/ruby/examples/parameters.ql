/**
 * @name Parameters
 * @description Lists method parameters.
 * @kind problem
 * @id mustlearn/ruby-parameters
 */
import ruby

from Method m, Parameter p
where p = m.getParameter(_)
select p, "Parameter of " + m.getName()
