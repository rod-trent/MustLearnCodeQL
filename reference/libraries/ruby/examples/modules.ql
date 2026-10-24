/**
 * @name Modules
 * @description Lists module declarations.
 * @kind problem
 * @id mustlearn/ruby-modules
 */
import ruby

from Module m
select m, "Module: " + m.getName()
