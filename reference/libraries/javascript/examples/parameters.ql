/**
 * @name Parameters
 * @description Lists function parameters.
 * @kind problem
 * @id mustlearn/js-parameters
 */
import javascript

from Function f, Parameter p
where p = f.getParameter(_)
select p, "Parameter of " + f.getName()
