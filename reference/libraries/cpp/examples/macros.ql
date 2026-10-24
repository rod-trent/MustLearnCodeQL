/**
 * @name Macros
 * @description Lists macro invocations.
 * @kind problem
 * @id mustlearn/cpp-macros
 */
import cpp

from MacroInvocation m
select m, "Macro: " + m.getMacroName()
