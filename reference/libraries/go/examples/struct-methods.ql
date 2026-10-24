/**
 * @name Struct methods
 * @description Lists methods defined on structs.
 * @kind problem
 * @id mustlearn/go-struct-methods
 */
import go

from Method m
select m, "Method: " + m.getName()
