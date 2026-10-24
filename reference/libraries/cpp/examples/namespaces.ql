/**
 * @name Namespaces
 * @description Lists namespaces.
 * @kind problem
 * @id mustlearn/cpp-namespaces
 */
import cpp

from Namespace n
select n, "Namespace: " + n.getName()
