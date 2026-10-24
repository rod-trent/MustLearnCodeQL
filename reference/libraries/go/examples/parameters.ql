/**
 * @name Parameters
 * @description Lists function parameters.
 * @kind problem
 * @id mustlearn/go-parameters
 */
import go

from FuncDecl f, Parameter p
where p = f.getParameter(_)
select p, "Parameter of " + f.getName()
