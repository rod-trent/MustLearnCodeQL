/**
 * @name Classes
 * @description Lists class declarations.
 * @kind problem
 * @id mustlearn/ruby-classes
 */
import ruby

from ClassDeclaration c
select c, "Class: " + c.getName()
