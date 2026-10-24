/**
 * @name Parameters
 * @description Lists function parameters.
 * @kind problem
 * @id mustlearn/swift-parameters
 */
import swift

from Function f, Parameter p
where p = f.getParameter(_)
select p, "Parameter of " + f.getName()
