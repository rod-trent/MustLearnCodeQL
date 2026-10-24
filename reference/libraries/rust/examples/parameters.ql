/**
 * @name Parameters
 * @description Lists function parameters.
 * @kind problem
 * @id mustlearn/rust-parameters
 */
import rust

from Function f, Parameter p
where p = f.getParameter(_)
select p, "Parameter of " + f.getName()
