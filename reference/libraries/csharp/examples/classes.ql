/**
 * @name Classes
 * @description Lists class definitions.
 * @kind problem
 * @id mustlearn/cs-classes
 */
import csharp

from Class c
select c, "Class: " + c.getName()
