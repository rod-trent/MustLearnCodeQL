/**
 * @name Parameters
 * @description Lists function parameters.
 * @kind problem
 * @id mustlearn/py-parameters
 */
import python

from Function f, Parameter p
where p = f.getArg(_)
select p, "Parameter of " + f.getName()
