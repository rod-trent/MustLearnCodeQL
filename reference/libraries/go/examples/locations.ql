/**
 * @name Locations
 * @description Lists the location of every function.
 * @kind problem
 * @id mustlearn/go-locations
 */
import go

from FuncDecl f
select f, f.getLocation().toString()
