/**
 * @name Parameters
 * @description Lists method parameters.
 * @kind problem
 * @id mustlearn/java-parameters
 */
import java

from Method m, Parameter p
where p = m.getParameter(_)
select p, "Parameter of " + m.getName()
